//require supertest
const request = require("supertest");//??
//url of localserver is assigned to app
const app = "http://localhost:3000";//??

describe("GET /api/welcome", () => {
    it("welcome message", async () => {
        return request(app)
            .get("/api/welcome")
            .expect('Content-Type', 'application/json; charset=utf-8')
            .expect('{"message":"Welcome to Traffic-Light!","status":"success"}')
            .then((res) => {
                expect(res.statusCode).toBe(200);
            })
    });
});

describe("GET /api/trafficlight", () => {
    it("out of order", async () => {
        return request(app)//??
            .get("/api/trafficlight")//??
            .expect('Content-Type', 'application/json; charset=utf-8')//??
            //be aware of empty spaces
            .expect('{"message":"OUT OF ORDER","status":"success"}')//??
            .then((res) => {//??
                expect(res.statusCode).toBe(200);//??
            })//??
    });
});

describe("GET /api/trafficlight/:color", () => {
    it("red", async () => {
        return request(app)//??
            .get("/api/trafficlight/red")//??
            .expect('Content-Type', 'application/json; charset=utf-8')//??
            .expect(/{"message":"DON'T WALK!","status":"success"}/)//??
            .then((res) => {//??
                expect(res.statusCode).toBe(200);//??
            })//??
    });
});

/**
 *
 */
describe("GET /api/trafficlight/:color", () => {
    it("green", async () => {
        return request(app)//??
            .get("/api/trafficlight/green")//??
            .expect('Content-Type', 'application/json; charset=utf-8')//??
            .expect(/{"message":".*","status":"success"}/)//??
            .then((res) => {//??
                expect(res.statusCode).toBe(200);//??
            })//??
    });
});

describe("GET /api/trafficlight/:color", () => {
    it("orange", async () => {
        return request(app)//??
            .get("/api/trafficlight/orange")//??
            .expect('Content-Type', 'application/json; charset=utf-8')//??
            .expect(/{"message":"ATTENTION!","status":"success"}/)//??
            .then((res) => {//??
                expect(res.statusCode).toBe(200);//??
            })//??
    });
});

