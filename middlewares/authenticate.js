const passport = require("passport");
require("dotenv").config();

module.exports = (req, res, next) => {
    // console.log("request", req)
    passport.authenticate('jwt', function(err, user, info) {
        if (err) return next(err);

        if (!user) return res.status(401).json({message: "Unauthorized Access - No Token Provided!"});
        
        req.user = user;

        // Check if the token is close to expiring
        const currentTime = Math.floor(Date.now() / 1000); // Current time in seconds
        const timeRemaining = user.exp - currentTime;
        console.log("timeRemainingggggggggggggggggggggggggggggggggggggggggggggggggggggggg", req.user);
        if (timeRemaining < 30) { // If less than 30 seconds remain
            console.log("herrreeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee")
        // Generate a refresh token
        const refreshToken = jwt.sign({ id: user.id }, process.env.REFRESH_TOKEN_SECRET, {
            expiresIn: "1h", // Refresh token valid for 1 hour
        });

        console.log(refreshToken);
            // Send the new refresh token in the response header
            res.setHeader("x-refresh-token", refreshToken);
        }
        next();

    })(req, res, next);
};