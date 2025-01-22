const passport = require('passport');
const { Session } = require('../models'); // Adjust the path to your Session model

module.exports = async (req, res, next) => {
  passport.authenticate('jwt', async function (err, user, info) {
    if (err) return next(err);

    if (!user) {
      return res.status(401).json({ message: 'Unauthorized Access - No Token Provided!', expired: true });
    }
    req.user = user;

    try {
      // Check if the session exists in the database
      const session = await Session.findOne({ where: { token: req.headers.authorization.split(' ')[1], user_id: user.id } });

      if (!session || new Date(session.expiresAt) < new Date()) {
        return res.status(401).json({ expired: true });
        return res.status(401).json({ error: 'Session expired or invalid' });
      }

      next();
    } catch (error) {
      console.error('Error checking session:', error);
      return res.status(500).json({ error: 'Internal server error' });
    }
  })(req, res, next);
};