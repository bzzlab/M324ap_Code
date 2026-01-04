### Exercise 2: Code coverage for Traffic light API with JEST
###  Prerequisite
1. NodeJS is installed.
### Task 1: Create code coverage report in the browser 
1. Set up the app (src-directory) with the required node packages
2. Change index.js in order to test it without starting it as a separate server.
3. To obtain more details on the uncovered code,
   run the code coverage test with a web report and analyze it.
4. Write suitable unit tests to cover more code. Check your
   improvements. As a goal you should come near (or better) to the result below.
``` 
 PASS  tests/trafficlight.test.js
  GET /api/welcome
    √ welcome message (27 ms)
  GET /api/trafficlight
    √ out of order (4 ms)
  GET /api/trafficlight/:color
    √ When color is  then "OUT OF ORDER" (3 ms)
    √ When color is green then WALK! (3 ms)
    √ When color is orange then "ATTENTION!" (3 ms)
    √ When color is red then "DON'T WALK!" (2 ms)

---------------------|---------|----------|---------|---------|-------------------
File                 | % Stmts | % Branch | % Funcs | % Lines | Uncovered Line #s
---------------------|---------|----------|---------|---------|-------------------
All files            |     100 |      100 |     100 |     100 |
 api.trafficlight.js |     100 |      100 |     100 |     100 |
 index.js            |     100 |      100 |     100 |     100 |
 trafficlight.2.js   |     100 |      100 |     100 |     100 |
---------------------|---------|----------|---------|---------|-------------------
Test Suites: 1 passed, 1 total
Tests:       6 passed, 6 total
Snapshots:   0 total
Time:        1.062 s, estimated 2 s
Ran all test suites.
```
5. Test the app with ```null``` and empty string. If your unit tests fail then 
change ```trafficlight.js``` to cover these cases too.
                                                       
