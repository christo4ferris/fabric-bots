// Copyright IBM Corp All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0

var lineReader = require('readline').createInterface({
  input: require('fs').createReadStream('dormant-crs.txt')
});

lineReader.on('line', function (line) {
  var x = JSON.parse(line);
  var c = new Date(x.createdOn * 1000);
  var u = new Date(x.lastUpdated * 1000);
  if (x.hasOwnProperty("currentPatchSet")) {
    if (x.currentPatchSet.hasOwnProperty("comments")) {
      console.log(x.currentPatchSet.revision + " --- " + x.subject + " --- " + x.owner.username + " --- " + c.toDateString() + " --- " + u.toDateString());
    }
  }
});
