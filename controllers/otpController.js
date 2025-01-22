const express = require("express");
const OTP = require("../models").OTP;
const User = require("../models").User;
const UserPersonalDetails = require("../models").UserPersonalDetails;
const {
  success,
  errorResponse,
  validation,
  EmailNotification,
  SMSNotification,
} = require("../responseApi");
const bcrypt = require("bcryptjs");
require("dotenv").config();
const Op = require("sequelize").Op;

exports.generate = async function (req, res) {
  var salt = bcrypt.genSaltSync(10);
  const otp = Math.random().toString(36).substr(2, 5);
  // Find any user or user personal detail with matching phone or email
  const [user, userPersonal] = await Promise.all([
    User.findOne({
      where: {
        [Op.or]: [{ phone: req.body.to }, { email: req.body.to }],
      },
    }),
    UserPersonalDetails.findOne({
      where: {
        [Op.or]: [{ phone: req.body.to }, { email: req.body.to }],
      },
    }),
  ]);

  // Check if any record exists
  if (req.body.type != "forgot_password" && req.body.type != "update_password") {
    if (user || userPersonal) {
      return res
        .status(200)
        .json(success("Your " + req.body.type + " already exists!"));
    }
  }
  await OTP.findOne({
    where: {
      details: req.body.to,
      is_active: true,
      otp_type: req.body.type,
    },
  }).then(async (results) => {
    var jsondata = [];

    if (results && results.attempts <= 2) {
      const attempts = results.attempts + 1;
      jsondata = [];
      jsondata.push({
        attempts: attempts,
        otp: otp,
      });

      results.attempts = attempts;
      results.otp = bcrypt.hashSync(otp, salt);
      results.time = Date.now();
      results.save({ fields: ["attempts", "otp", "time"] });

      if (req.body.type == "email" || req.body.type == "forgot_password") {
        //send OTP to email ;
        var subject = "";
        if (req.body.type == "forgot_password") {
          subject = "Forgot password OTP";
        } else {
          subject = "OTP for SUGAM";
        }
        const template = "otp";
        console.log("subbbjjeccttt", req.body.type);
        response = await EmailNotification(
          process.env.EMAIL_FROM,
          req.body.to,
          subject,
          template,
          "",
          "",
          "",
          otp
        );
        if (response) {
          res
            .status(200)
            .json(success("OTP generated successfully!", jsondata));
        } else {
          res.status(400).json(errorResponse("Failed to Forward OTP", 400));
        }
      } else if (req.body.type == "update_password"){
        const template =
          "Hello! OTP To update password is " +
          otp +
          ". OTP is valid for 10 minutes.-Directorate of Higher Education.";

        response = SMSNotification(req.body.to, template);

        if (response) {
          res
            .status(200)
            .json(success("OTP generated successfully!", jsondata));
        } else {
          res.status(400).json(errorResponse("Failed to Forward OTP", 400));
        }
      }else{
        const template =
          "Hello! OTP To verify Phone is " +
          otp +
          ". OTP is valid for 10 minutes.-Directorate of Higher Education.";

        response = SMSNotification(req.body.to, template);

        if (response) {
          res
            .status(200)
            .json(success("OTP generated successfully!", jsondata));
        } else {
          res.status(400).json(errorResponse("Failed to Forward OTP", 400));
        }
      }
    } else if (!results) {
      console.log("herwwwwwwwwwwwwwwwwwwwwwwwwwwwctAAAAAAAAAAAAAAAAAAAAAe");
      await OTP.create({
        otp: bcrypt.hashSync(otp, salt),
        otp_type: req.body.type,
        details: req.body.to,
        attempts: 1,
      })
        .then(async (result) => {
          var jsondata = [];
          jsondata.push({
            attempts: 1,
            otp: otp,
          });
          if (req.body.type == "email" || req.body.type == "forgot_password") {
            //send OTP to email ;

            var subject = "";
            if (req.body.type == "forgot_password") {
              subject = "Forgot password OTP";
            } else {
              subject = "OTP for SUGAM";
            }
            const template = "otp";
            response = await EmailNotification(
              process.env.EMAIL_FROM,
              req.body.to,
              subject,
              template,
              "",
              "",
              "",
              otp
            );

            if (response) {
              res
                .status(200)
                .json(success("OTP generated successfully!", jsondata));
            } else {
              res.status(400).json(errorResponse("Failed to Forward OTP", 400));
            }
          }
          else if(req.body.type == "update_password"){
            var jsondata = [];
            jsondata.push({
              attempts: 1,
              otp: otp,
            });

            //send OTP to phone
            const template =
              "Hello! OTP To update password is " +
              otp +
              ". OTP is valid for 10 minutes.-Directorate of Higher Education.";

            response = await SMSNotification(req.body.to, template);

            if (response) {
              res
                .status(200)
                .json(success("OTP generated successfully!", jsondata));
            } else {
              res.status(400).json(errorResponse("Failed to Forward OTP", 400));
            }
          } else {
            var jsondata = [];
            jsondata.push({
              attempts: 1,
              otp: otp,
            });

            //send OTP to phone
            const template =
              "Hello! OTP To verify Phone is " +
              otp +
              ". OTP is valid for 10 minutes.-Directorate of Higher Education.";

            response = await SMSNotification(req.body.to, template);

            if (response) {
              res
                .status(200)
                .json(success("OTP generated successfully!", jsondata));
            } else {
              res.status(400).json(errorResponse("Failed to Forward OTP", 400));
            }
          }
        })
        .catch((error) => {
          res.status(400).json(errorResponse(error, 400));
        });
    } else {
      const attempts = results.attempts + 1;
      jsondata.push({
        attempts: attempts,
        otp: 0,
      });
      res
        .status(200)
        .json(
          success(
            "You have exceeded 3 attempts. Try after 10 minutes!",
            jsondata
          )
        );
    }
  });
};

exports.verify = async function (req, res) {
  let email_verified = false;
  let phone_verified = false;
  let otp_verified = false;

  try {
    const otpResult = await OTP.findOne({
      where: {
        details: req.body.details,
        otp_type: req.body.type,
      },
    });

    if (!otpResult) {
      return res.status(400).json(errorResponse("OTP not found!", 400));
    }

    const timeStart = otpResult.time.getTime();
    const timeEnd = Date.now();
    const validity = (timeEnd - timeStart) / 60 / 1000; // in minutes

    if (validity > 10) {
      return res
        .status(400)
        .json(errorResponse("Time's up! Please try again!", 400));
    }

    if (otpResult.verify_attempts >= 3) { 
      await OTP.update({ verify_attempts_time:  Date.now()}, { where: { details: otpResult.details } });     
      return res
        .status(400)
        .json(
          errorResponse(
            "You have exceeded the maximum number of OTP verification attempts. Please wait 10 minutes before trying again!",
            400
          )
        );
    }
    const isOtpValid = bcrypt.compareSync(req.body.otp, otpResult.otp);
    if (!isOtpValid) {
      await OTP.update({ verify_attempts: otpResult.verify_attempts + 1 }, { where: { details: otpResult.details } });
      return res.status(400).json(errorResponse("Enter a correct OTP!", 400));
    }

    if (req.body.type === "phone") {
      // const user = await User.findOne({
      //   where: { phone: req.body.details },
      // });

      // if (user) {
      // user.phone_verified = true;
      // await user.save({ fields: ["phone_verified"] });
      phone_verified = true;
      // }
    } else if (req.body.type === "email") {
      // const user = await User.findOne({
      //   where: { email: req.body.details },
      // });

      // if (user) {
      // user.email_verified = true;
      // await user.save({ fields: ["email_verified"] });
      email_verified = true;
      // }
    } else if (req.body.type == "update_password"){
      otp_verified = true; // For forgot password case
    }
    else{
      otp_verified = true; // For forgot password case
    }

    if (email_verified || phone_verified || otp_verified) {
      return res
        .status(200)
        .json(success(req.body.type + " verified successfully!"));
    } else {      
      return res
        .status(400)
        .json(
          errorResponse(req.body.type + " not verified successfully!", 400)
        );
    }
  } catch (error) {
    return res.status(400).json(errorResponse(error.message, 400));
  }
};

exports.reset_attempts = async function (req, res) {
  try {
    const tenMinutesAgo = new Date();
    tenMinutesAgo.setMinutes(tenMinutesAgo.getMinutes() - 10);

    // Find OTP entries that match the conditions
    const otpEntry = await OTP.findAll({
      attributes: ["otp_type", "details", "attempts"],
      where: {
        attempts: {
          [Op.gte]: 3, // Greater than or equal to 3 attempts
        },
        time: {
          [Op.lte]: tenMinutesAgo, // Older than 10 minutes
        },
      },
    });

    if (otpEntry) {
      for (const otp of otpEntry) {
        await OTP.update({ attempts: 0 }, { where: { details: otp.details } });
        console.log("Email OTP attempts reset.");
      }
    } else {
      // No matching OTP found
      console.log("No OTP found to reset.");
      return res.status(400).json({ message: "No OTP found to reset." });
    }
  } catch (error) {
    // Handle errors
    res.status(400).json(errorResponse(error, 400));
  }
};

exports.reset_verify_attempts = async function (req, res) {
  try {
    const tenMinutesAgo = new Date();
    tenMinutesAgo.setMinutes(tenMinutesAgo.getMinutes() - 10);

    // Find OTP entries that match the conditions
    const otpEntry = await OTP.findAll({
      attributes: ["otp_type", "details", "verify_attempts"],
      where: {
        verify_attempts: {
          [Op.gte]: 3, // Greater than or equal to 3 attempts
        },
        verify_attempts_time: {
          [Op.lte]: tenMinutesAgo, // Older than 10 minutes
        },
      },
    });

    if (otpEntry) {
      for (const otp of otpEntry) {
        await OTP.update({ verify_attempts: 0 }, { where: { details: otp.details } });
        console.log("verify OTP attempts reset.");
      }
    } else {
      // No matching OTP found
      console.log("No OTP found to reset.");
      return res.status(400).json({ message: "No OTP found to reset." });
    }
  } catch (error) {
    // Handle errors
    res.status(400).json(errorResponse(error, 400));
  }
};

exports.resetForgotPassword_attempts = async function (req, res) {
  const thirtyMinutesAgo = new Date();
  thirtyMinutesAgo.setMinutes(thirtyMinutesAgo.getMinutes() - 30);

  const results = await OTP.findOne({
    attributes: ["otp_type", "details", "attempts"],
    where: {
      attempts: 3,
      otp_type: "forgot_password",
      time: {
        [Op.lte]: thirtyMinutesAgo,
      },
    },
  });
  if (results) {
    OTP.update(
      { attempts: 0 },
      { where: { details: results.details, otp_type: results.otp_type } }
    );
  } else {
  }
};

exports.resetUpdatePassword_attempts = async function (req, res) {
  const thirtyMinutesAgo = new Date();
  thirtyMinutesAgo.setMinutes(thirtyMinutesAgo.getMinutes() - 30);

  const results = await OTP.findOne({
    attributes: ["otp_type", "details", "attempts"],
    where: {
      attempts: 3,
      otp_type: "update_password",
      time: {
        [Op.lte]: thirtyMinutesAgo,
      },
    },
  });
  if (results) {
    await OTP.update(
      { attempts: 0 },
      { where: { details: results.details, otp_type: results.otp_type } }
    );

    console.log("update password attempts set to 0")
  } else {    
  }
};

exports.testSMS = async function (req, res) {
  // const template = `Hello bleh! Your account has been successfully created on SUGAM portal! You can log in and edit your profile at our website URL - DHE`;
  const template = `Hello bleh! Your account has been successfully created! You can login and access various services on SUGAM portal - Directorate of Higher Education  `;
  const test = SMSNotification(req.body.phone, template);

  return res.status(200).json(success(" tested successfully!", test));
};
