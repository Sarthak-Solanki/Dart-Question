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

  Map toJson() {
    Map map = new Map();
    map["Name"] = _name;
    map["Address"] = _adress;
    map["zipcode"] = _zip;
    map["Phone no"] = _phno;
    return map;
  }
  Person.fromJson(Map<String,dynamic>map){
    _name = map["Name"];
    _adress = map["Address"];
    _zip = map["zipcode"];
    _phno = map["Phone no"];
  }
   setadress(String value) {
    _adress = value;
  }


}