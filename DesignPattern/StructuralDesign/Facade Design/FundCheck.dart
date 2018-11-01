class FundCheck{
  int _balance = 5000;
  getBalance(){
    return _balance;
  }
  decreaseBalance(int i){
    _balance = _balance-i;
  }
  increaseBalance(int i){
    _balance = _balance+i;
  }
  bool haveEnoughBalance(int cashToWithdraw){
    if(getBalance()> cashToWithdraw){
      decreaseBalance(cashToWithdraw);
      print("Withdraw Successfull");
      print("Currnet balance is: ${getBalance()}");
      return true;
    }
    else{
      print("Don't have enough money");
      print("Current Balance is ${getBalance()}");
      return false;
  }}
  makeDeposit(int cashToDeposit){
    increaseBalance(cashToDeposit);
    print("Cash deposited");
    print("Currnet balance is: ${getBalance()}");
  }
}