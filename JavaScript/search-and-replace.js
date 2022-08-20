function myReplace(str, before, after) {
  let startingIndex = str.indexOf(before);
  let endingIndex = before.length;
  let finalStr = str.slice(0,startingIndex);
  let restStr = str.slice(startingIndex+before.length);

  //check if the before[0] is caps or
  if (before[0] == before[0].toUpperCase()) {
    after = after.charAt(0).toUpperCase() + after.slice(1);
  } else {
    after = after.charAt(0).toLowerCase() + after.slice(1);
  }
  //replacing
  for (let i = 0; i < after.length; i++) {
    finalStr += after[i];
  }
  finalStr = finalStr.concat(restStr);
  return finalStr;
}

//tests 
myReplace("A quick brown fox jumped over the lazy dog", "jumped", "leaped");
myReplace("He is Sleeping on the couch", "Sleeping", "sitting");