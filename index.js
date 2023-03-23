require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const application = express(); // initialize our express app


 
// Setting up port
// const connUri = process.env.MONGO_LOCAL_CONN_URL;
let PORT = process.env.PORT || 3000;
application.use(bodyParser.urlencoded({ extended: true })); // parse requests of content-type - application/x-www-form-urlencoded
application.use(bodyParser.json()); // parse requests of content-type - application/json

//setting flash 
// application.use(flash());
var countryRouter = require('./routes/country');
var roleRouter = require('./routes/role');
var stateRouter = require('./routes/state');
var districtRouter = require('./routes/district');
var cityRouter = require('./routes/city');
var instituteTypeRouter = require('./routes/instituteType');
var employmentTypeRouter = require('./routes/employmentType');
var serviceRouter = require('./routes/service');
var serviceRoleRouter = require('./routes/serviceRole');
var programmeRouter = require('./routes/programme');
var classRouter = require('./routes/class');
var instituteRouter = require('./routes/institute');
var instituteProgrammeRouter = require('./routes/instituteProgramme');
var authRouter = require('./routes/auth');

application.use('/api/v1/country', countryRouter);
application.use('/api/v1/role', roleRouter);
application.use('/api/v1/state', stateRouter);
application.use('/api/v1/district', districtRouter);
application.use('/api/v1/city', cityRouter);
application.use('/api/v1/insttype', instituteTypeRouter);
application.use('/api/v1/emptype', employmentTypeRouter);
application.use('/api/v1/service', serviceRouter);
application.use('/api/v1/servicerole', serviceRoleRouter);
application.use('/api/v1/programme', programmeRouter);
application.use('/api/v1/class', classRouter);
application.use('/api/v1/institute', instituteRouter);
application.use('/api/v1/instprog', instituteProgrammeRouter);
application.use('/api/v1/auth', authRouter);

//=== 5 - START SERVER
application.listen(PORT, () => console.log('hello:'+PORT+'/'));
application.get('/', function(req, res) {
    console.log("on route /");
})

application.post('/q', function(req, res) {
    console.log("hey ", req.body.name);
    res.send(req.body.name)
})