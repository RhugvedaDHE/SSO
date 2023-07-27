const passport = require("passport");
const Permission = require("../models").Permission;
const UserPermission = require("../models").UserPermission;

exports.authorizationFunc = function (permission) {
  return function (req, res, next) {
    console.log(permission);
    passport.authenticate("jwt", async function (err, user, info) {
      if (err) return next(err);

      if (!user)
        return res
          .status(401)
          .json({ message: "Unauthorized Access - No Token Provided!" });
      else {
        req.user = user;

        let permissionName = await Permission.findOne({
          where: {
            name: permission,
          },
        });

        await UserPermission.findOne({
          where: {
            permission_id: permissionName.name,
            role_id: user.role_id,
          },
        })
          .then((permission) => {
            if (permission) {
              next();
            } else {
              return res.status(401).json({ message: "Access Denied!" });
            }
          })
          .catch((error) => {
            return res.status(500).json({ message: error });
          });
      }
    })(req, res, next);
  };
};
