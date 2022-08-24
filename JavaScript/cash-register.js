function checkCashRegister(price, cash, cid) {
  let money = {
    "PENNY" : 0.01,
    "NICKEL" : 0.05,
    "DIME" : 0.1,
    "QUARTER" : 0.25,
    "ONE" : 1.0,
    "FIVE" : 5.0,
    "TEN" : 10.0,
    "TWENTY" : 20.0,
    "ONE HUNDRED" : 100.0
  };

  let totalAvalMoney = 0;
  for (let i = 0; i < cid.length; i ++) {
    totalAvalMoney += cid[i][1]
  }
  totalAvalMoney = totalAvalMoney.toFixed(2);
  let change = cash-price;
  let changeArr = [];
  //returns 
  if (totalAvalMoney < change || change < 0 ) {
    return {status : "INSUFFICIENT_FUNDS", change : []};
  } 
  else if (totalAvalMoney === change.toFixed(2)) {
    return {status : "CLOSED", change : cid};
  } 
  else {
    cid = cid.reverse();
    for (let i of cid) {
      let tempChange = [i[0],0]
      while (change >= money[i[0]] && i[1] > 0) {
        tempChange[1] += money[i[0]];
        i[1] -= money[i[0]];
        change -= money[i[0]];
        change = change.toFixed(2);
      }
      if (tempChange[1] > 0) {
        changeArr.push(tempChange);
      }
    }
  }
  if (change > 0) {
    return {status : "INSUFFICIENT_FUNDS", change : []};
  }
  console.log(changeArr)
  return {status : "OPEN", change : changeArr};
}

/*checkCashRegister(19.5, 20, [["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]);*/

checkCashRegister(19.5, 20, [["PENNY", 0.5], ["NICKEL", 0], ["DIME", 0], ["QUARTER", 0], ["ONE", 0], ["FIVE", 0], ["TEN", 0], ["TWENTY", 0], ["ONE HUNDRED", 0]])