const request =  require('supertest')
const server =  require('../src/index')
const app = request(server)
describe('GET /api/welcome', () => {
    it('welcome message', async () => {
        const res =  await app
            .get('/api/welcome')
            .expect('Content-Type', 'application/json; charset=utf-8')
            .expect('{"message":"Welcome to Traffic-Light!","status":"success"}')
            .then((res) => {
                expect(res.statusCode).toBe(200);
            })
    })
})

describe("GET /api/trafficlight", () => {
//??
//??
//??
//??
//??
//??
//??
//??
//??
})

describe("GET /api/trafficlight/:color", () => {
//??
//??
//??
//??
//??
//??
//??
//??
//??
//??
//??
//??
//??
//??
})

afterAll(async () => {
    server.close();
});
