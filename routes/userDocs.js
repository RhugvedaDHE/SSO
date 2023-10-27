const express = require('express');
const router = express.Router();
require('dotenv').config();
const {check} = require('express-validator');
const validate = require('../middlewares/validate');
const userDocs = require('../controllers/userdocsController');
const authenticate = require('../middlewares/authenticate');
//var multer = require('multer');


console.log("In userDocs routes");

// router.post('/create', [
//     check('role_id').not().isEmpty().withMessage('Role is required'),
//     check('menuitem_id').not().isEmpty().withMessage('Menu Item is required'),
// ], validate, UserMenuItem.create);
// req.checkBody('rest_logo', 'Restaurant Logo - Please upload an image Jpeg, Png or Gif').isImage(restLogo);

router.post("/uploaddoc", [
        // check('doc_type_id').not().isEmpty().withMessage('Document type is required'),
        // check('file').isImage(file).withMessage('Menu Item is required'),
    ],
    //  validate, 
    authenticate, userDocs.uploadDoc);
    
router.get("/download-signed-undertaking/:filename", authenticate, userDocs.downloadSignedUndertakingPdf);

// Retrieve all user docs
router.get("/all/:id", userDocs.findAll);

//create a undertaking doc
router.get("/create", authenticate, userDocs.createUndertakingPdf);

// router.post("/showfile", userDocs.showImage);

// Retrieve a single  with id
router.post("/get/:id", userDocs.findOne);

// Delete a  with id
router.post("/delete/docs", authenticate, userDocs.delete);

// Create a new 
router.delete("/", userDocs.deleteAll);
module.exports = router;
