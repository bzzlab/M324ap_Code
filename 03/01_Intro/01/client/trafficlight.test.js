//Import supertest
const request = require("supertest");//??
//app is localhost:3000
const app = "http://localhost:3000";
// let app = require("./index.js");

/*
Passing custom arguments to jest
https://stackoverflow.com/questions/49798864/passing-custom-arguments-to-jest
 */

describe("GET /api/welcome", () => {
    it("welcome message -1", async () => {
        return request(app)//??
            .get("/api/welcome")//??
            .expect('Content-Type', 'application/json; charset=utf-8')//??
            .expect(function(res) {//??
                if (!res.body.hasOwnProperty('status'))//??
                    throw new Error("Expected 'status' key!");//??
                if (!res.body.hasOwnProperty('message'))//??
                    throw new Error("Expected 'message' key!");//??
            })//??
            .then((res) => {//??
                expect(res.statusCode).toBe(200);//??
            })//??
    });

    //this test fails
    it("out of order (fail)", async () => {
        return request(app)//??
            .get("/api/trafficlight")//??
            .expect('Content-Type', 'application/json; charset=utf-8')//??
            .expect(200)//??
            //.* -> match any characters (Do not forget the point!)
            .expect(/{"message":"Willkommen ...","status":"success"}/)//??
    });

    //this test succeeds
    it("out of order (ok)", async () => {
        return request(app)//??
            .get("/api/trafficlight")//??
            .expect('Content-Type', 'application/json; charset=utf-8')//??
            .expect(200)//??
            //.* -> match any characters (Do not forget the point!)
            .expect(/{"message":"OUT OF ORDER","status":"success"}/)//??
    });

    it("out of order (ok, but not advisable)", async () => {
        return request(app)//??
            .get("/api/welcome")//??
            .expect('Content-Type', 'application/json; charset=utf-8')//??
            .expect(200)//??
            //.* -> match any characters (Do not forget the point!)
            .expect(/{"message":".*","status":"success"}/)//??
    });
});
