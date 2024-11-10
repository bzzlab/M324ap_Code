//require supertest
//??
//url of localserver is assigned to app
//??

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
//??
//??
//??
            //be aware of empty spaces
//??
//??
//??
//??
    });
});

describe("GET /api/trafficlight/:color", () => {
    it("red", async () => {
//??
//??
//??
//??
//??
//??
//??
    });
});

/**
 *
 */
describe("GET /api/trafficlight/:color", () => {
    it("green", async () => {
//??
//??
//??
//??
//??
//??
//??
    });
});

describe("GET /api/trafficlight/:color", () => {
    it("orange", async () => {
//??
//??
//??
//??
//??
//??
//??
    });
});

