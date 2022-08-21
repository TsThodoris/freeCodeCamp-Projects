function fearNotLetter(str) {
  //convert every char to ascii code
  let last = str[str.length-1].charCodeAt(0);
  let charArr = [...str].map(num => num.charCodeAt(0));
  charArr = charArr.slice(0,str.length-1).concat(last);

  for (let i = 1; i < str.length; i++) {
    let temp = charArr[i]-charArr[i-1];
    if (temp > 1) {
      return String.fromCharCode(charArr[i]-1);
    }
  }
  return undefined;
}

fearNotLetter("abce");