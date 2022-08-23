function orbitalPeriod(arr) {
  const GM = 398600.4418;
  const earthRadius = 6367.4447;
  let newArr = [];

  const getPeriod = function(obj) {
    let a = obj.avgAlt+earthRadius;
    let period = 2*Math.PI*Math.sqrt(Math.pow(a,3)/GM);
    period = Math.round(period);
    return {name : obj.name, orbitalPeriod : period};
  }
  for (let i = 0; i < arr.length; i++) {
    newArr.push(getPeriod(arr[i]));
  }
  console.log(newArr);
  return newArr;
}

orbitalPeriod([{name : "sputnik", avgAlt : 35873.5553}]);
orbitalPeriod([{name: "iss", avgAlt: 413.6}, {name: "hubble", avgAlt: 556.7}, {name: "moon", avgAlt: 378632.553}])