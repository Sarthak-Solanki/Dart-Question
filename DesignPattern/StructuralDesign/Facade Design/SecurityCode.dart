class SecurityCode{
  int _securityCode = 1234;
  getSecCode(){
    return _securityCode;
  }
  bool pinIsValid(int sc){
    if(sc==getSecCode()){
      return true;
    }
    else
      return false;
  }
}