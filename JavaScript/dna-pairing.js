function pairElement(str) {
  let arr = [];
  for (let i = 0; i < str.length; i++) {
    switch(String(str[i])) {
      case "A":
        arr.push(["A","T"]);
        break;
      case "T":
        arr.push(["T","A"]);
        break;
      case "G":
        arr.push(["G","C"]);
        break;
      case "C":
        arr.push(["C","G"]);
        break;
    }
  }
  return arr;
}

pairElement("GCG");