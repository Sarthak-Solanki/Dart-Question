class Patient{
  String _name;
  String _id;
  String _mobileNumber;
  int _age;
  String getNAme(){
    return _name;
  }
  String getid(){
    return _id;
  }
  String getMobile(){
    return _mobileNumber;
  }
  int age(){
    return _age;
  }
  Patient(this._name, this._id, this._mobileNumber, this._age);
  Map toJson() {
    Map map = new Map();
    map["Name"] = _name;
    map["id"] = _id;
    map["Mobile NUmber"] = _mobileNumber;
    map["Age"] = _age;
    return map;
  }
  Patient.fromJson(Map<String,dynamic>map){
    _name = map["Name"];
    _id = map["id"];
    _mobileNumber = map["Mobile Number"];
    _age = map["age"];
  }
}