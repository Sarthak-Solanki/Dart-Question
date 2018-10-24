class CompanyShares {
  String _symbol;
  int _numOfShare;
  int _price;
  String _dateTime;
  CompanyShares(this._symbol, this._numOfShare, this._price,this._dateTime);
  String getSymbol() {
    return _symbol;
  }

  int getNumOfShare() {
    return _numOfShare;
  }
  int getPrice() {
    return _price;
  }
  String getDateTime() {
    return _dateTime;
  }
  int getValue(){
    return _numOfShare*_price;
  }
  void setNumOfShare(int i){
    this._numOfShare = i;
  }
  void setDateTime(var i){
    this._dateTime = i;
  }
}