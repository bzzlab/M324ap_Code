### Traffic-light
#### How to run the index
1. Install dependencies (see package.json)
```
npm install
```
2. Start first the server
```
$ npm run server 
```
3. Open a 2nd terminal and make a test request (optional)
```
$ curl http://localhost:3000/api/welcome
...
{"message":"Welcome to Traffic-Light!","status":"success"}
```
4. Run unit-tests (in the 2nd terminal)
```
$ npm run test
...
{"message":"Welcome to Traffic-Light!","status":"success"}
```

#### How to test the index
1. Install jest-cli globally (only once per machine, used for every test)
```
npm i jest-cli -g
```
2. Run tests
```
npm run test
```
