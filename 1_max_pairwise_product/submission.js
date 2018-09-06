// var readline = require('readline');

// process.stdin.setEncoding('utf8');
// var rl = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout  
// //   terminal: true
// });

// rl.on('line', readLine);

// function readLine(line) {
//   if (line !== "\n") {
//     var a = parseInt(line.toString().split(' ')[0], 10);
//     var b = parseInt(line.toString().split(' ')[1], 10);
//     console.log(a + b);
//     process.exit();
//   }
// }

var readline = require('readline');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout

});

rl.question(">>What's your name?  ", function (answer) {
  console.log("Hello " + answer);
  rl.close();
});