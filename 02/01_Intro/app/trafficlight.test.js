//import module traffic light
const app = require("./trafficlight"); //??

//test suite
describe('test suite traffic light', () => { //??
    //case red light
    it(`case red light`, () => { //??
        expect(app.trafficLight("red"))//??
            .toBe("DON'T WALK!");//??
    });//??
});//??
