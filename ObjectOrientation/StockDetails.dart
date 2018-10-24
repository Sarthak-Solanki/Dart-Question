class StockDetails{
  String _name;
  int _noOfShare,_price;

  StockDetails(this._name, this._noOfShare, this._price);
  int getValue(){
    return _noOfShare*_price;
  }
  String getName(){
    return _name;
  }
  int getNoOfShare(){
    return _noOfShare;
  }
  int getPrice(){
    return _price;
  }


}