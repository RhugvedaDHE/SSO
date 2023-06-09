const express = require("express");
const OTP = require("../models").OTP;
const User = require("../models").User;
const {
  success,
  errorResponse,
  validation,
  EmailNotification,
  SMSNotification,
} = require("../responseApi");
const bcrypt = require("bcryptjs");
require("dotenv").config();

exports.generate = async function (req, res) {
  var salt = bcrypt.genSaltSync(10);
  const otp = Math.random().toString(36).substr(2, 5);

  await OTP.findOne({
    where: {
      details: req.body.to,
      is_active: true,
      otp_type: req.body.type,
    },
  }).then((results) => {
    console.log("results: ", results);
    if (results && results.attempts <= 2) {
      const attempts = results.attempts + 1;
      results.attempts = attempts;
      results.otp = bcrypt.hashSync(otp, salt);
      results.time = Date.now();
      results.save({ fields: ["attempts", "otp", "time"] });

      if (req.body.type == "email" || req.body.type == "forgot_password") {
        //send OTP to email ;
        var subject = "";
        req.body.type == "forgot_password"
          ? (subject = "Forgot password OTP")
          : "OTP for SUGAM";
        const template = "otp";
        response = EmailNotification(
          process.env.EMAIL_FROM,
          req.body.to,
          subject,
          template,
          otp,
          "",
          ""
        );
        console.log("heyyy response id: ", response);
        if (response) {
          res.status(200).json(success("OTP generated successfully!", otp));
        } else {
          res.status(400).json(errorResponse("Failed to Forward OTP", 400));
        }
      } else {
        const template =
          "Hello! OTP To verify Phone is " +
          otp +
          ". OTP is valid for 10 minutes.-Directorate of Higher Education.";
        console.log(template);
        response = SMSNotification(req.body.to, template);
        console.log("heyyy response id: ", response);
        if (response) {
          res.status(200).json(success("OTP generated successfully!", otp));
        } else {
          res.status(400).json(errorResponse("Failed to Forward OTP", 400));
        }
      }
    } else if (!results) {
      OTP.create({
        otp: bcrypt.hashSync(otp, salt),
        otp_type: req.body.type,
        details: req.body.to,
        attempts: 1,
      })
        .then((result) => {
          if (req.body.type == "email" || req.body.type == "forgot_password") {
            //send OTP to email ;

            const subject = "";
            req.body.type == "forgot_password"
              ? (subject = "Forgot password OTP")
              : "OTP for SUGAM";
            const template = "otp";
            response = EmailNotification(
              process.env.EMAIL_FROM,
              req.body.to,
              subject,
              template,
              otp,
              "",
              ""
            );
            console.log("heyyy response id: ", response);
            if (response) {
              res.status(200).json(success("OTP generated successfully!", otp));
            } else {
              res.status(400).json(errorResponse("Failed to Forward OTP", 400));
            }
          } else {
            //send OTP to phone
            const template =
              "Hello! OTP To verify Phone is " +
              otp +
              ". OTP is valid for 10 minutes.-Directorate of Higher Education.";
            console.log(template);
            response = SMSNotification(req.body.to, template);
            console.log("heyyy response id: ", response);
            if (response) {
              res.status(200).json(success("OTP generated successfully!", otp));
            } else {
              res.status(400).json(errorResponse("Failed to Forward OTP", 400));
            }
          }
        })
        .catch((error) => {
          res.status(400).json(errorResponse(error, 400));
        });
    } else {
      res
        .status(200)
        .json(
          success(
            "Please come back tomorrow! You have exceeded today's attempts!"
          )
        );
    }
  });
};

exports.verify = async function (req, res) {
  let email_verified = false;
  let phone_verified = false;
  let otp_verified = false;
  await OTP.findOne({
    where: {
      details: req.body.details,
    },
  })
    .then((results) => {
      var timeStart = results.time.getTime();
      var timeEnd = Date.now();

      var validity = ((timeEnd - timeStart) / 60 / 1000); //in minutes
      console.log("validity is _________________________________________________", validity)
      console.log("Start is _________________________________________________", timeStart)
      console.log("end is _________________________________________________", timeEnd)
      if (validity <= 10) {
        if (bcrypt.compareSync(req.body.otp, results.otp)) {
          if (req.body.type == "phone") {
            User.findOne({
              where: {
                phone: req.body.details,
              },
            }).then((user) => {
              // if (!user.phone_verified) {
              //   user.phone_verified = true;
              //   // user.save({ fields: ["phone_verified"] });
              // }
              phone_verified = true;
            });
            phone_verified = true;
          } else if (req.body.type == "email") {
            User.findOne({
              where: {
                email: req.body.details,
              },
            }).then((user) => {
              console.log(user);
              // if (!user.email_verified) {
              //   user.email_verified = true;
              //   // user.save({ fields: ["email_verified"] });
              // }
              email_verified = true;
            });
            email_verified = true;
          } else {
            //forgot password
            otp_verified = true;
          }
          if (email_verified || phone_verified || otp_verified) {
            res
              .status(200)
              .json(success(req.body.type + " verified successfully!"));
          } else {
            res
              .status(400)
              .json(
                errorResponse(
                  req.body.type + " not verified successfully!",
                  400
                )
              );
          }
        } else {
          res.status(400).json(errorResponse("Enter a correct OTP!", 400));
        }
      } else {
        res
          .status(400)
          .json(errorResponse("Time's up! Please try again!", 400));
      }
    })
    .catch((error) => {
      res.status(400).json(errorResponse(error, 400));
    });
};

exports.reset_attempts=async function (req, res) {
  console.log("reached reset attempts")
  const tenMinutesAgo = new Date();
  tenMinutesAgo.setMinutes(tenMinutesAgo.getMinutes() - 10);

  const results=await OTP.findOne({
      attributes:['otp_type','details','attempts'],
      where: {
          attempts: 3,
          time: {
            [Op.lte]: tenMinutesAgo,
          }
      },
    })
    if(results){
      // console.log('results=',results)
      if(results.otp_type=='email'){
          console.log("finding email is in User Table")
          User.findOne({
              where: {
                email: results.details,
              }
            }).then((emailotp)=>{
             console.log('email verified=',emailotp.email_verified)
              if (emailotp.email_verified==false) {
                  console.log("reached email verification setting attempts to 0")
                  OTP.update({attempts:0},{where:{details:results.details}})
                  console.log("finished resetting attempts to 0")
                }
            }) .catch((error) => {
              res.status(400).json(errorResponse(error, 400));
            });
      }
      if(results.otp_type=='phone'){
          console.log("finding Phone is in User Table")
          User.findOne({
              where: {
                phone: results.details,
              }
            }).then((phoneotp)=>{
              if (phoneotp.phone_verified==false) {
                  console.log("reached Phone verification setting attempts to 0")
                  OTP.update({attempts:0},{where:{details:results.details}})
                  console.log("finished resetting Phone attempts to 0")
                }
            }) .catch((error) => {
              res.status(400).json(errorResponse(error, 400));
            });
      }
     
  }else{
      console.log("no data to update")
  }
};



exports.resetForgotPassword_attempts=async function (req, res) {
  console.log("reached Forgot Password attempts")
  const thirtyMinutesAgo = new Date();
  thirtyMinutesAgo.setMinutes(thirtyMinutesAgo.getMinutes() - 30);

  const results=await OTP.findOne({
      attributes:['otp_type','details','attempts'],
      where: {
          attempts: 3,
          otp_type:'forgot_password',
          time: {
            [Op.lte]: thirtyMinutesAgo,
          }
      },
    })
    if(results){
                  console.log("reached forgot password resetting attemp")
                  OTP.update({attempts:0},{where:{details:results.details,otp_type:results.otp_type}})
                  console.log("finished resetting attempts to 0")
             
  }else{
      console.log("no data to update")
  }
};