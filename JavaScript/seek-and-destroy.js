function destroyer(arr) {
  let otherVals = Array.from(arguments).slice(1);
  let newArr = [];

  for (let i = 0; i < arr.length; i++) {
    let removeBool = false;
    for (let j = 0; j < otherVals.length; j++) {
      if (otherVals[j] === arr[i]) {
        removeBool = true;
      }
    }
    if (!removeBool) {
      newArr.push(arr[i]);
    }
  }
  return newArr;
}

destroyer([1, 2, 3, 1, 2, 3], 2, 3);