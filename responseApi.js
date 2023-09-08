const axios = require("axios");
var path = require('path');
const Notification = require( path.resolve( __dirname, "./Models/notification.js" ) );
// const { Curl } = require("node-libcurl");
/**
 * @desc    Send any success response
 *
 * @param   {string} message
 * @param   {object | array} data
 * @param   {number} statusCode
 */
exports.success = (message, data) => {
  return {
    rs: "S",
    rc: "SUC001",
    rd: "Success",
    pd: data,
    em: "",
    message: message,
  };
};

/**
 * @desc    Send any error response
 *
 * @param   {string} message
 * @param   {number} statusCode
 */
exports.errorResponse = (message, statusCode) => {
  // List of common HTTP request code
  const codes = [200, 201, 400, 401, 404, 403, 422, 500];

  // Get matched code
  const findCode = codes.find((code) => code == statusCode);

  if (!findCode) statusCode = 500;
  else statusCode = findCode;

  return {
    rs: "F",
    rc: "ER400",
    rd: "Failure",
    pd: "",
    em: message,
    message: "Please Check your Details!",
  };
};

/**
 * @desc    Send any validation response
 *
 * @param   {object | array} errors
 */
exports.validation = (errors) => {
  return {
    message: "Validation errors",
    error: true,
    code: 422,
    errors,
  };
};

exports.getUserDetails = (email) => {
  const URL = "localhost:3000/api/v1/auth/get-user-from-email";

  try {
    const response = axios.post(URL, {
      email: email,
    });
    return response;
  } catch (err) {
    return err;
  }
};

exports.userCredentials = (email, phone) => {
  console.log("usernnamme is:  ", email, phone);
  // Create a username by taking the first part of the email address and adding the last four digits of the phone number
  const username = email.split("@")[0] + phone.toString().slice(-4);
  const password = phone;
  return {
    username: username,
    password: password,
  };
};

//create notification
exports.CreateNotification = (
  from,
  to,
  subject,
  message
) => {
  console.log("notification");
  try {
    Notification.create({
      from_userrole: from,
      to_userrole: to,
      subject: subject,
      message: message
    })
    .then((notification) => {
      return 1;
    }).catch((error)=> {
      res.status(400).send("Error creating Notification!");
    })    
  } catch (error) {
    res.status(500).send("Error forwarding request to microservice");
  }
};

//call email microservice
exports.EmailNotification = (
  from,
  to,
  subject,
  template,
  otp,
  username,
  password
) => {
  console.log("email microservice", subject);
  try {
    const response = axios.post("http://192.168.0.108:3002/otp/send-email", {
      from: from,
      to: to,
      subject: subject,
      template: template,
      otp: otp,
      username: username,
      password: password,
    });
    return response;
  } catch (error) {
    res.status(500).send("Error forwarding request to microservice");
  }
};

//call SMS microservice
exports.SMSNotification = (to, template) => {
  console.log("SMS microservice");
  const url =
    "https://japi.instaalerts.zone/httpapi/QueryStringReceiver?ver=1.0&key=1XC7N4zUq8ct40avCum5AA==&dest=" +
    to +
    "&send=GOADHE&text=" +
    template +
    "";
  try {
    const response = axios.post(url, {});
    return response;
  } catch (error) {
    res.status(500).send("Error forwarding request to microservice");
  }
};
