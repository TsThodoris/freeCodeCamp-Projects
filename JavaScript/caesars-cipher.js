function rot13(str) {
  let decoded = [];
  str = str.split('');
  for (let i = 0 ; i < str.length; i++) {
    if (str[i] != ' ' && /\W/.test(str[i]) == false) {
      // charcters only
      if (str[i].charCodeAt() > 77) {
        decoded.push(String.fromCharCode(str[i].charCodeAt()-13))
      }
      else {
        decoded.push(String.fromCharCode(str[i].charCodeAt()-13+26));
      }
    } else {
      //spaces and non-alphanumerics
      decoded.push(str[i])
    }

  }
  return decoded.join('');
}

rot13("SERR PBQR PNZC");
rot13("SERR CVMMN!")
rot13("GUR DHVPX OEBJA SBK WHZCF BIRE GUR YNML QBT.")

