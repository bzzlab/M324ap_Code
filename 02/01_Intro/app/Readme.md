### Traffic-light
#### How to run the index
1. Install dependencies (see package.json)
```
npm install
```
2. Run index either with npm run or with node and 
provide the following arguments: green or red or orange or <nothing>
```
$ npm run index -- green                
...
Traffic light is green                
WALK                                  
```
or direct call with node
```
$ node index.js red
Traffic light is red
DON'T WALK!                        
...
```

#### How to test the index
1. Install jest-cli globally (only once per machine, used for every test)
```
npm i jest-cli -g
```
2. Run test (see <file>.test.js)
```
npm run test
```
3. More details on unit-testing see [jest](https://jestjs.io/docs/getting-started).
