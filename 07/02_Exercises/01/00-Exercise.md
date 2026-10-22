### Exercise 1: Code coverage for Traffic light app
###  Prerequisite
1. NodeJS is installed.
### Task 1: Create code coverage report on the terminal 
1. Set up the app (directory "src") with the required node packages
3. Run the code coverage test (directory "tests) on the terminal with all files.
As a result you should receive something similar as shown below
``` 
-----------------|---------|----------|---------|---------|-------------------
File             | % Stmts | % Branch | % Funcs | % Lines | Uncovered Line #s
-----------------|---------|----------|---------|---------|-------------------
All files        |   28.57 |       25 |     100 |   28.57 |
 index.js        |       0 |      100 |     100 |       0 | 1-6 
 trafficlight.js |   44.44 |       25 |     100 |   44.44 | 8,13-17
-----------------|---------|----------|---------|---------|-------------------
Test Suites: 1 passed, 1 total
Tests:       1 passed, 1 total
Snapshots:   0 total
Time:        1.902 s
Ran all test suites.
```
3. In order to obtain more detail on the uncovered code, 
run the code coverage test with a web report and analyze it.
4. Write suitable unit tests in order to cover more code. Check your 
improvements. As a goal you should come near (or better) to the result below. 

```
-----------------|---------|----------|---------|---------|-------------------
File             | % Stmts | % Branch | % Funcs | % Lines | Uncovered Line #s
-----------------|---------|----------|---------|---------|-------------------
All files        |     100 |     87.5 |     100 |     100 |
 trafficlight.js |     100 |     87.5 |     100 |     100 | 16
-----------------|---------|----------|---------|---------|-------------------
Test Suites: 1 passed, 1 total
Tests:       5 passed, 5 total
Snapshots:   0 total
Time:        0.724 s, estimated 1 s
Ran all test suites. 
```
5. Test the app with ```null``` and empty string. If your unit tests fail, the 
change ```trafficlight.2.js``` in order to cover these cases too.


### Task 2 (Bonus): 100% code coverage
1. Do you have an idea to score following result:
```                                                                
PASS  tests/trafficlight.test.js                                                 
test suite traffic light                                                        
√ case red light (2 ms)                                                       
test suite traffic light undefined                                              
√ When color is undefined then OUT OF ORDER (1 ms)                            
√ When color is null then OUT OF ORDER                                        
√ When color is  then OUT OF ORDER                                            
test suite traffic light with colors                                            
√ When color is orange then ATTENTION! (1 ms)                                 
√ When color is red then DON'T WALK!                                          
√ When color is green then WALK!

-----------------|---------|----------|---------|---------|-------------------    
File             | % Stmts | % Branch | % Funcs | % Lines | Uncovered Line #s     
-----------------|---------|----------|---------|---------|-------------------    
All files        |     100 |      100 |     100 |     100 |                       
trafficlight.2.js  |     100 |      100 |     100 |     100 |                       
-----------------|---------|----------|---------|---------|-------------------    
Test Suites: 1 passed, 1 total                                                    
Tests:       7 passed, 7 total                                                    
Snapshots:   0 total                                                              
Time:        0.54 s, estimated 1 s                                                
Ran all test suites.
```                                                       
