/**
 * @desc    Send any success response
 *
 * @param   {string} message
 * @param   {object | array} data
 * @param   {number} statusCode
 */
exports.success = (message, data) => {
    return {
      "rs": "S",
      "rc": "SUC001",
      "rd": "Success",
      "pd": data,
      "em": "",
      "message": message
    };
  };
//   {
//     "rs": "S",
//     "rc": "PM000",
//     "rd": "Success",
//     "pd": "",
//     "em": "",
//     "message": "Student details saved successfully"
// }

  
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
      "rs": "F",
      "rc": "ER400",
      "rd": "Failure",
      "pd": "",
      "em": message,
      "message": "Please Check your Details!"
    };
  };
  
//   {
//     "rs": "F",
//     "rc": "400",
//     "rd": "Failure",
//     "pd": "",
//     "em": {
//         "mobile_no": "This mobile number already exists!"
//     },
//     "message": "Please check your details"
// }

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
      errors
    };
  };