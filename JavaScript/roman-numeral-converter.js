function convertToRoman(num) {
  var romanNums = {
    M : 1000,
    CM : 900,
    D : 500,
    CD : 400,
    C : 100,
    XC : 90,
    L : 50,
    XL : 40,
    X : 10,
    IX : 9,
    V : 5,
    IV : 4,
    I : 1
  };
  var str = ''
  for (let i of Object.keys(romanNums)) {
    let value = Math.floor(num/romanNums[i])
    num -= value*romanNums[i];
    str += i.repeat(value);
  }
 return str;
}

convertToRoman(36);