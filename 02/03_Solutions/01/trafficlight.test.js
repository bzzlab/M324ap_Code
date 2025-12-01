const app = require('./trafficlight');
describe('test suite traffic light', () =>{
    it('case red light', ()=>{
        expect(app.trafficLight("red"))
            .toBe("DON'T WALK!");
    });

    it(`case green light`, () => {
        expect(app.trafficLight("green"))
            .toBe("WALK!");
    });

    it(`case orange light`, () => {
        expect(app.trafficLight("orange"))
            .toBe("ATTENTION!");
    });

    it(`case undefined light`, () => {
        expect(app.trafficLight(undefined))
            .toBe("OUT OF ORDER");
    });
})
