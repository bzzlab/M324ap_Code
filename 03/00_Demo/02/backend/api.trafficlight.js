const lib = require("./trafficlight");

//Export api
module.exports = app => {

    //welcome message
    /**
     *  /api/welcome: welcome message
     */
    app.get('/api/welcome', (req, res) => {
        res.status(200).json({
            message: "Welcome to Traffic-Light!",
            status: 'success'
        });
    });

    /**
     * /api/trafficlight
     */
    app.get('/api/trafficlight', (req, res) => {
        res.status(200).json({
            message: lib.trafficLight(undefined),
            status: 'success'
        });
    });
}
