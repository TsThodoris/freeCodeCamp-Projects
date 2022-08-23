function palindrome(str) {
  //check if the provided str is a palindrome (remove non-alphanumerics)
  str = str.toLowerCase();
  str = str.replace(/[^a-z0-9]/gi,'');
  let reverseStr = [];
  let strArr = str.split("");
  for (let i = strArr.length-1; i >= 0; i--) {
    reverseStr.push(strArr[i])
  }
  reverseStr = reverseStr.join('');
  return reverseStr === str;
}

palindrome("eye");