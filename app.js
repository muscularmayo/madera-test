const fs = require('fs');
const fsp = require("fs").promises

let originalData

// fs.readFile('./dbadeveloperremoteexamination/StudentData.csv', 'utf8', (err, data) => {
//   if (err) {
//     console.error(err);
//     return;
//   }
//   console.log(data)

// }); we do not like callback hell


(async function() {
  const promiseData = await fsp.readFile('./dbadeveloperremoteexamination/StudentData.csv', 'utf8')
  console.log(promiseData)
})();


