import 'AccountNoCheck.dart';
import 'SecurityCode.dart';
import 'FundCheck.dart';
import 'WelcomeToBank.dart';
class Facade{
  int _accNo;
  int _securityCode;
  AccountNoCheck acNoCh;
  SecurityCode sCh;
  FundCheck fndCh;
  WelcomeToBank wc;
  Facade(int accNo,int secCode){
_accNo = accNo;
_securityCode = secCode;
    wc = new WelcomeToBank();

    acNoCh = new AccountNoCheck();

    sCh = new SecurityCode();

    fndCh = new FundCheck();

  }
  int getAc(){
    return _accNo;
  }
  int getSec(){
    return _securityCode;
  }
  void withdraw(int CashToGet){
    if(acNoCh.accountIsValid(getAc())&&sCh.pinIsValid(getSec())&&fndCh.haveEnoughBalance(CashToGet)){
      print("Trasaction Successfull");
    }
    else
      print("Not SuccessFull");
  }
  void depositCash(int cashToDeposit){
    if(acNoCh.accountIsValid(getAc())&&sCh.pinIsValid(getSec())){
      fndCh.increaseBalance(cashToDeposit);
      print("Trasaction Successfull");
    }
    else
      print("Not SuccessFull");
  }
}
