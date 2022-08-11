function compareNumbers(a, b) {
  return a - b;
}
function getIndexToIns(arr, num) {
  let newArr = [...arr,num];
  newArr = newArr.sort(compareNumbers);
  console.log(newArr);
  let indexes = [];
  for (let i = 0 ; i < newArr.length ; i++ ) {
    if (newArr[i] == num) {
      return i;
    }
  }
}
getIndexToIns([40, 60], 50);