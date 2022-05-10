const fs = require('fs');



var msg = 'hello world'
console.log(msg)
console.log('hello??')

fs.readFile('./dbadeveloperremoteexamination/StudentData.csv', 'utf8', (err, data) => {
  if (err) {
    console.error(err);
    return;
  }
  console.log(data, typeof data);
});
