const express = require("express");
const cors = require("cors");
const jwt = require("jsonwebtoken");
const https = require("https");
const base64url = require("base64url");
const crypto = require("crypto");
const jose = require("jose");
const { response } = require("express");
var axios = require("axios");
const fs = require("fs");
const User = require("../models").User;
const { success, errorResponse, validation } = require("../responseApi");

async function fileio() {
  const jwe = "xyz";
  const privateKey = await jose.importJWK(
    {
      kty: "oct",
      k: "sNR_O3bqr1E2ryHcrkE_oQ4r5GRY2Vu4EtUI3TtRGJY",
    },
    "HS256"
  );
  const { plaintext, protectedHeader } = await jose.compactDecrypt(
    jwe,
    privateKey
  );
  console.log("protected header => " + protectedHeader);
  console.log("plain text => " + new TextDecoder().decode(plaintext));
  const key = crypto
    .createPublicKey(cert)
    .export({ type: "pkcs1", format: "pem" });
  console.log("certificate keys=>" + key);
  console.log("certificate type=>" + typeof key);
  const jws = "xyz";
  let decode = jwt.verify(jws, key, { ignoreExpiration: "true" });
  console.log({ decode });
}
const cert = fs.readFileSync("./epramaan.crt");
console.log("certificate contents => " + cert);
fileio();

//creation of code verifier, code challenge and nonce

exports.createUniquecode = async (req, res) => {
  console.log("in linkURL api");
  const clientId = "100001119"; //your service ID
  const scope = "openid";
  const stateIdUnprocessed = crypto.randomUUID();
  const stateId = stateIdUnprocessed.replace(/[^a-zA-Z0-9]/g, "");
  const redirectUri = "http://14.139.114.20:5000/dashboard"; //your URL goes here (SSO success URL)
  const requestUri =
    "https://epstg.meripehchaan.gov.in/openid/jwt/processJwtAuthGrantRequest.do";
  const responseType = "code";
  const aesKey = "b4c78596-a2aa-441b-afe7-85844bec3457"; //your AES key goes here
  const nonceValueUnprocessed = crypto.randomUUID();
  const nonceValue = nonceValueUnprocessed.replace(/[^a-zA-Z0-9]/g, "");
  const base64url = require("base64url");
  const codeVerifierUnprocessed = crypto.randomBytes(24).toString("hex");
  const codeVerifier = codeVerifierUnprocessed.replace(/[^a-zA-Z0-9]/g, "");
  const base64Digest = crypto
    .createHash("sha256")
    .update(codeVerifier)
    .digest("base64");
  const codeChallenge = base64url.fromBase64(base64Digest);
  const codeChallengeMethod = "S256";
  const inputValue =
    clientId +
    aesKey +
    stateId +
    nonceValue +
    redirectUri +
    scope +
    codeChallenge;
  const apiHmac = crypto
    .createHmac("sha256", aesKey)
    .update(inputValue)
    .digest("base64");

  const link =
    "https://epstg.meripehchaan.gov.in/openid/jwt/processJwtAuthGrantRequest.do?&scope=" +
    scope +
    "&response_type=" +
    responseType +
    "&redirect_uri=" +
    redirectUri +
    "&state=" +
    stateId +
    "&code_challenge_method=" +
    codeChallengeMethod +
    "&nonce=" +
    nonceValue +
    "&client_id=" +
    clientId +
    "&code_challenge=" +
    codeChallenge +
    "&request_uri=" +
    requestUri +
    "&apiHmac=" +
    apiHmac +
    "";

  // console.log("Link = " + link);
  // console.log("stateId = " + stateId);
  // console.log("nonce = " + nonceValue);
  // console.log("codeChallenge = " + codeChallenge);
  // console.log("apiHmac = " + apiHmac);
  // console.log("inputValue = " + inputValue);
  // console.log("codeVerifier = " + codeVerifier);

  const data = [link, clientId, nonceValue, codeVerifier, stateId];

  res.status(200).json(success("HMAC created successfully!", data));
  // res.status(200).json(success("HMAC created successfully!", "https://dishtavo.dhe.goa.gov.in/"));
};

exports.createJWT = async (req, res) => {
  // const { authCode, stateId, nonce, codeVerifier, clientId } = req.body
  const authCode = req.body.authCode;
  const stateId = req.body.stateId;
  const nonce = req.body.nonce;
  const codeVerifier = req.body.codeVerifier;
  const clientId = req.body.clientId;
  console.log("in JWT api");
  console.log("authCode => " + authCode);
  console.log("stateId => " + stateId);
  // console.log("nonce => " + nonce);
  const nonceProcessed = nonce.replace(/['"]+/g, "");
  // console.log("nonceProcessed => " + nonceProcessed);
  // console.log("codeVerifier => " + codeVerifier);
  const codeVerifierProcessed = codeVerifier.replace(/['"]+/g, "");
  // console.log("codeVerifierProcessed => " + codeVerifierProcessed);
  // console.log("clientId => " + clientId);
  const clientIdProcessed = clientId.replace(/['"]+/g, "");
  console.log("clientIdProcessed => " + clientIdProcessed);

  var axios = require("axios");
  var data = JSON.stringify({
    code: [authCode],
    grant_type: ["authorization_code"],
    scope: ["openid"],
    redirect_uri: [
      "https://epstg.meripehchaan.gov.in/openid/jwt/processJwtTokenRequest.do",
    ],
    request_uri: [
      "http://localhost:6000/get-jwt", // your backend API's controller URL, ,here backend server runs on port 5050
    ],
    code_verifier: [codeVerifierProcessed],
    client_id: [clientIdProcessed],
  });
  console.log("data to be sent => " + data);

  var config = {
    method: "post",
    url: "https://epstg.meripehchaan.gov.in/openid/jwt/processJwtTokenRequest.do",
    headers: {
      "Content-Type": "application/json",
      Cookie: "upid=55FCA86C177AFFC95D36768176345C31",
    },
    data: data,
  };

  console.log("making call to request JWE");

  const returnedResult = await axios(config).catch((error) =>
    console.log(error)
  );
  // console.log('returnedResult of axios call => ' + returnedResult);
  // console.log("returnedResult data part => " + returnedResult.data);
  jweGlobal = returnedResult.data;

  console.log("response for JWT => ", jweGlobal);

  const hashedNonceString = crypto
    .createHash("sha256")
    .update(nonceProcessed)
    .digest("base64url");

  const privateKey = await jose.importJWK(
    {
      kty: "oct",
      k: hashedNonceString,
    },
    "HS256"
  );

  const { plaintext, protectedHeader } = await jose.compactDecrypt(
    jweGlobal,
    privateKey
  );

  // console.log("protected header => " + protectedHeader);
  // console.log("plain text => " + new TextDecoder().decode(plaintext));

  const jws = new TextDecoder().decode(plaintext);

  const cert = fs.readFileSync("./epramaan.crt");
  // console.log('certificate contents => ' + cert);

  const utf8Encode = new TextEncoder();
  const hashedKey = utf8Encode.encode(cert);

  const key = crypto
    .createPublicKey(cert)
    .export({ type: "pkcs1", format: "pem" });
  // console.log('certificate key => ' + key)
  // console.log('certificate type => ' + typeof (key))

  jwt
    .verify(jws, key, { ignoreExpiration: "true" })
    .then(async (decode) => {
      const name = JSON.stringify(decode.name);
      const sessionId = decode["session_id"];
      const sub = decode["sub"];

      console.log("userName => " + name);
      console.log("nameFromJSONObject => " + decode["name"]);
      console.log("sessionFromJSONObject => " + decode["session_id"]);
      console.log("subFromJSONObject => " + decode["sub"]);

      // const decodedData = {decode, name};
      const decodedData = { decode };

      await User.findOne({
        where: {
          username: name,
        },
      }).then((user) => {
        if (user.length) {
          res
            .status(200)
            .json(
              success("Decoded successfully!", {
                epramaanUser: decode,
                user: true,
              })
            );
        } else {
          res
            .status(200)
            .json(
              success("User Not found on SUGAM!", {
                epramaanUser: decode,
                user: false,
              })
            );
        }
      });
    })
    .catch((error) => {
      res.status(400).json(error("Error creating JWT!", error));
    });

  // response.send(decode);
  // console.log("decodedData => " + JSON.stringify(decodedData));
};

exports.logout = async (req, res) => {
  //inputValue = clientId+sessionId+iss+logoutRequestId+sub+redirectUrl
  const requestData = request.body;
  const clientId = "100001119"; //service ID
  const sessionId = requestData.sessionId; //get it from JWT
  const iss = "ePramaan";
  const logoutRequestIdUnprocessed = crypto.randomUUID();
  const logoutRequestId = logoutRequestIdUnprocessed.replace(
    /[^a-zA-Z0-9]/g,
    ""
  );
  const redirectUrl = ""; //SSO logout success URL
  const sub = requestData.sub; //get it from JWT
  const inputValue =
    clientId + sessionId + iss + logoutRequestId + sub + redirectUrl;
  const hmac = crypto
    .createHmac("sha256", logoutRequestId)
    .update(inputValue)
    .digest("base64");
  const customParameter = "";
  const data = {
    clientId: clientId,
    sessionId: sessionId,
    hmac: hmac,
    iss: iss,
    logoutRequestId: logoutRequestId,
    sub: sub,
    redirectUrl: redirectUrl,
    customParameter: customParameter,
  };
  console.log("data => ", JSON.stringify(data));
  response.send(data);
};
