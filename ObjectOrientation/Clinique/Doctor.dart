import 'package:intl/intl.dart';

class Doctor {
  String _name;
  String _id;
  String _specialization;
  int _apointmentNo;

  Doctor(this._name, this._id, this._specialization, this._apointmentNo);

  int getAppointemntNo() {
    return _apointmentNo;
  }

  int setAppointemntNo() {
    _apointmentNo = _apointmentNo + 1;
  }

  String getName() {
    return _name;
  }

  String getId() {
    return _id;
  }

  String getSpecialization() {
    return _specialization;
  }

  String getDate() {
    var date = DateTime.now();
    var format = new DateFormat('dd-mm-yyyy');
    String formatted = format.format(date);
    return formatted;
  }

  Map toJson() {
    Map map = new Map();
    map["Name"] = _name;
    map["id"] = _id;
    map["Specialization"] = _specialization;
    map["apointmentNo"] = _apointmentNo;
    return map;
  }
  Doctor.fromJson(Map<String,dynamic>map){
    _name = map["Name"];
    _id = map["id"];
    _specialization = map["Specialization"];
    _apointmentNo = map["apointmentNo"];
  }

//  Doctor.fromJson(List<Map<String, dynamic>> itemList){
//    itemList.forEach((item) =>
//    {
//        _name = map["Name"];
//        _id = map["id"];
//        _specialization = map["Specialization"];
//        _apointmentNo = map["apointmentNo"];
//    });
//  }
}

