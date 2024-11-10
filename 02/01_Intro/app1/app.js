const app = require("./trafficlight");
//Read (parse) argument
let args = process.argv.slice(2);//??
let color = args[0];//??
console.log(`Traffic light is ${color}`);//??
console.log(app.trafficLight(color));
