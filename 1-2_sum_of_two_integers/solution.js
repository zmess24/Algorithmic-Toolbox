let fs = require('fs');

/**
|--------------------------------------------------
| ALGORITHMIC TESTING GROUND
|--------------------------------------------------
*/

const readLines = (err, data) => {
    if (err) throw err;
    let lines = data.toString().split('\n');
    lines.forEach(line => {
        let test = line.split(' ');
        // Input algorithmic function here:
        sum(test)
    })
};

const sum = (array) => {
    let a = parseInt(array[0]);
    let b = parseInt(array[1]);
    console.log(a + b);
}

fs.readFile('dataset.txt', 'utf8', readLines);