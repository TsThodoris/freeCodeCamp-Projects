function confirmEnding(str, target) {
  let targetLen = target.length;
  let boolArr = [];
  let j = 1;
  for (let i = str.length-1 ; i > str.length-1-targetLen ; i--){
    if (str[i] == target[targetLen-j]) {
      boolArr.push(true);
    }else {
      boolArr.push(false);
    }
    j++;
  }
  for (let i = 0 ; i < boolArr.length ; i++) {
    if (!boolArr[i]) {
      return false;
    }
  }
  return true;
}

confirmEnding("Bastian", "n");