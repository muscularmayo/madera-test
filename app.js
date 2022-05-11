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
  const dataArray = promiseData.split('\r\n')
  /*
  dataArray[0] is going to be our object headers
  dataArray[1] to [infinity] are going to be our objects
  we want to convert this into a array of objects
  */
  const headers = dataArray[0].split(',')
  const studentObjects = []
  for (let i = 1; i < dataArray.length; i++) {
    const currentStudent = dataArray[i].split(',')
    const studentObject = {}
    for (let j = 0; j < headers.length; j++) {
      studentObject[headers[j]] = currentStudent[j]
    }
    studentObjects.push(studentObject)
  }

  for(let i = 0; i < studentObjects.length; i++) {
    //we are now in the object
    let majorityElective;
    if (studentObjects[i].NumberOfElectives/studentObjects[i].NumberOfClasses >= .5) {
      majorityElective = true;
    } else {
      majorityElective = false;
    }
    studentObjects[i].hasMajorityElective = majorityElective;

    //“isELandFRE” true if 'isEnglishLearner' and 'isFreeAndReduced'
    if (studentObjects[i].isEnglishLearner === '1' && studentObjects[i].isFreeAndReduced === '1') {
      studentObjects[i].isELandFRE = true;
    } else {
      studentObjects[i].isELandFRE = false;
    }

  }
  console.log(studentObjects)

})();


