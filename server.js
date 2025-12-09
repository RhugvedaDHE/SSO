import express from "express";
import session from "express-session";
import { Issuer, generators } from "openid-client";
import jwt from "jsonwebtoken";
import dotenv from "dotenv";

dotenv.config();
const app = express();

// ------------------------------
// CONFIG
// ------------------------------
const SUGAM_ISSUER = "https://sugam.unigoa.ac.in";
const SS_PRIVATE_KEY = process.env.SS_PRIVATE_KEY; // RSA PRIVATE KEY
const SS_ISSUER = "https://auth.shikshasetu.school";
const SS_AUDIENCE = "shikshasetu";

// session for user
app.use(
  session({
    secret: "super-secret-key",
    resave: false,
    saveUninitialized: true,
  })
);

let client; // OIDC client instance

// ------------------------------
// DISCOVER OIDC CONFIG
// ------------------------------
(async () => {
  const sugamIssuer = await Issuer.discover(
    `${SUGAM_ISSUER}/.well-known/openid-configuration`
  );

  client = new sugamIssuer.Client({
    client_id: process.env.CLIENT_ID,
    client_secret: process.env.CLIENT_SECRET,
    redirect_uris: ["https://auth.shikshasetu.school/oidc/callback"],
    response_types: ["code"],
  });

  console.log("✔ SUGAM OIDC discovered");
})();

// ------------------------------
// LOGIN
// ------------------------------
app.get("/auth/login", (req, res) => {
  const state = generators.state();
  const nonce = generators.nonce();

  req.session.state = state;
  req.session.nonce = nonce;

  const authUrl = client.authorizationUrl({
    scope: "openid profile email phone",
    state,
    nonce,
  });

  res.redirect(authUrl);
});

// ------------------------------
// CALLBACK (SUGAM → SS)
// ------------------------------
app.get("/oidc/callback", async (req, res) => {
  const params = client.callbackParams(req);

  // Validate id_token using JWKS
  const tokenSet = await client.callback(
    "https://auth.shikshasetu.school/oidc/callback",
    params,
    {
      state: req.session.state,
      nonce: req.session.nonce,
    }
  );

  const { id_token, claims } = tokenSet;

  console.log("✔ SUGAM token verified");
  console.log("User claims:", claims);

  // ------------------------------
  // CREATE SS-JWT (bridge token)
  // ------------------------------
  const ssJwt = jwt.sign(
    {
      sub: claims.sub,
      email: claims.email,
      role: claims.role,
      org: "Goa-HE-Khandola",
      modules: ["lms", "3d", "labs", "erp"],
    },
    SS_PRIVATE_KEY,
    {
      algorithm: "RS256",
      expiresIn: "15m",
      issuer: SS_ISSUER,
      audience: SS_AUDIENCE,
    }
  );

  // Example redirect to LMS
  res.redirect(`https://lms.shikshasetu.school/launch?token=${ssJwt}`);
});

// ------------------------------
// LOGOUT
// ------------------------------
app.get("/logout", async (req, res) => {
  req.session.destroy(() => {});

  const logoutUrl = `${SUGAM_ISSUER}/logout?post_logout_redirect_uri=https://auth.shikshasetu.school`;

  res.redirect(logoutUrl);
});

// ------------------------------
app.listen(3000, () => console.log("Server running on 3000"));
