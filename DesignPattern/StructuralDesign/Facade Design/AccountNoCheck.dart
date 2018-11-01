class AccountNoCheck{
  int _accno = 12345678;
  getAccNo(){
    return _accno;
  }
  bool accountIsValid(int ac){
    if(ac==getAccNo()){
      return true;
    }
    else
      return false;
  }
}