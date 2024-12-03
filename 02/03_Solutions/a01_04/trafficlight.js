/*
Task: Traffic light with argument color
A. Re-wright traffic light example with color as an argument.
B. If no argument is provided then traffic light is out of order.

Test:
$ node a01-A.js
Traffic light is undefined
OUT OF ORDER

$ node a01-A.js red
Traffic light is red
DON'T WALK!

$ node a01-A.js orange
Traffic light is orange
ATTENTION

$ node a01-A.js green
Traffic light is green
WALK

*/
'use strict';

function trafficLight(color){
    if (color === undefined){//??
        return `OUT OF ORDER`//??
    } else {//??
        if (color === 'red'){//??
            return `DON'T WALK!`//??
        }//??
        else if (color === 'orange'){//??
            return `ATTENTION!`//??
        }//??
        else if (color === 'green'){//??
            return `WALK!`//??
        }//??
    }//??
}

module.exports = {
    trafficLight
}
