class Patient{
  String _name;
  String _id;
  String _mobileNumber;
  int _age;
  String getNAme(){
    return _name;
  }
  String getit(){
    return _id;
  }
  String getMobile(){
    return _mobileNumber;
  }
  int age(){
    return _age;
  }
  Patient(this._name, this._id, this._mobileNumber, this._age);

}