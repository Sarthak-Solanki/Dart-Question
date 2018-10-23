class CompanyShare {
  String _symbol;
  int numOfShare = 50;
  int _dateTime;
  int price = 200;
  int get dateTime => _dateTime;
  //int get numOfShare => _numOfShare;
  String get symbol => _symbol;
  set dateTime(int value) {
    _dateTime = value;
  }
}