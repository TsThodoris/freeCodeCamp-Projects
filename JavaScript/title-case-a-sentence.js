function titleCase(str) {
  let finalStr = str[0].toUpperCase();
  for (let i = 1 ; i < str.length ; i++) {
    if (str[i-1] == " ") {
      finalStr += str[i].toUpperCase();
    } else {
      finalStr += str[i].toLowerCase();
    }
  }
  return finalStr;
}

titleCase("I'm a little tea pot");
