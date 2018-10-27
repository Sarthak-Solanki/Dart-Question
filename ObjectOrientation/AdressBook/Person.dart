class Person{
  String _name;
  String _adress;
  int _zip;
  String _phno;

  Person(this._name, this._adress,  this._zip,
      this._phno);
  String get phno => _phno;
  int get zip => _zip;
  String get adress => _adress;
  String get name => _name;

   setphno(String value) {
    _phno = value;
  }

   setzip(int value) {
    _zip = value;
  }


   setadress(String value) {
    _adress = value;
  }


}