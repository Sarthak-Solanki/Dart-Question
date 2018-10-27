class Doctor{
  String _name;
  String _id;
  String _specialization;
  int ApointmentNo = 0;

  Doctor(this._name, this._id, this._specialization);

  String getName(){
    return _name;
  }
  String getId(){
    return _id;
  }
  String getSpecialization(){
    return _specialization;
  }


  //Doctor(this._name, this._id, this._specialization);

}
