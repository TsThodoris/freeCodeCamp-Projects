function truncateString(str, num) {
  if (str.length > num) {
    let newStr = str.slice(0,num);
    str = newStr+"...";
    console.log(str);
    return str;
  }
  return str;
}

truncateString("A-tisket a-tasket A green and yellow basket", 8);