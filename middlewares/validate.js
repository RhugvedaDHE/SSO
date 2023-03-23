const {validationResult} = require('express-validator');

module.exports = (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        let error = {}; errors.array().map((err) => error[err.param] = err.msg);
        return res.status(422).json({
            "rs": "F",
            "rc": "ER400",
            "rd": "Failure",
            "em": error,
            "message": "Please check your details!"

        });
    }
    next();
};
