const JwtStrategy = require('passport-jwt').Strategy,
    ExtractJwt = require('passport-jwt').ExtractJwt;
    require("dotenv").config();
const User = require('../models').User;
const UserRole = require('../models').UserRole;
const CryptoJS = require("crypto-js");

const opts = {
    jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
    secretOrKey: process.env.JWT_SECRET
};

module.exports = passport => {
    console.log("herrreeeeeeebbvhbv are we");
    passport.use(
        new JwtStrategy(opts, (jwt_payload, done) => {
            
            const decryptedUserId = CryptoJS.AES.decrypt(jwt_payload.userId, process.env.CRYPTOJS_SECRET).toString(CryptoJS.enc.Utf8);
            const decryptedUserrole = CryptoJS.AES.decrypt(jwt_payload.userRole, process.env.CRYPTOJS_SECRET).toString(CryptoJS.enc.Utf8);
            const decryptedUsername = CryptoJS.AES.decrypt(jwt_payload.username, process.env.CRYPTOJS_SECRET).toString(CryptoJS.enc.Utf8);
            const userId = parseInt(decryptedUserId, 10);
            const userRole = parseInt(decryptedUserrole, 10);

            console.log("suerid", userId)
            console.log("suerid", userRole)
            console.log("suerid", decryptedUsername)
            User.findByPk(userId)
                .then(user => {
                    user.role_id = userRole;
                    if (user) return done(null, user);
                    return done(null, false);
                })
                .catch(err => {
                    return done(err, false, {message: 'Server Error'});
                });
        })
    );
};