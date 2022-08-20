function diffArray(arr1, arr2) {
  const newArr = [];
  function onlyInThat(that,theOther) {
    for (let i = 0; i < that.length; i++) {
      if (theOther.indexOf(that[i]) === -1) {
        //does not exist in array 
        newArr.push(that[i]);
    }
  }
  }
  onlyInThat(arr1,arr2);
  onlyInThat(arr2,arr1);
  return newArr;
}


diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5]);
//diffArray(["andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"]);