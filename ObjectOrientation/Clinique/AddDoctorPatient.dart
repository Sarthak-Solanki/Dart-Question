import 'dart:io';
import 'Doctor.dart';
import 'Patient.dart';
class AddDoctorPatient{
  List<Doctor> drList = new List();
  List<Patient> ptList = new List();
  String drst = "";
  String ptst = "";
  addDrPt(){
    print("0 to add doctor");
    print("1 to add patient");
    print("2 to schedule appointment");
    print("3 to show popular doctor");
    int add = int.parse(stdin.readLineSync());
    if(add==1){
      addDr();
    }
    else if(add==1){
      addPatient();
    }
    else if(add==2){
      // scheduleAppointment();
    }
    else if(add==3){
      //  showPopularDr();
    }
  }
  addDr(){
    Map dr = new Map();

    print("Enter name of docter");
    String name = stdin.readLineSync();
    dr["name"] = name;                       //Adding to map

    print("Enter id");
    String id = stdin.readLineSync();
    dr["id"] = id;                           //Adding to map

    print("Enter Specialization");
    String speciality = stdin.readLineSync();
    dr["Specialization"] = speciality;       //Adding to map
    drst = drst+dr.toString();
    Doctor drcl = new Doctor(name, id, speciality);
    drList.add(drcl);
  }
  addPatient(){
    Map pt = new Map();
    print("Enter name");
    String name = stdin.readLineSync();
    pt["name"] = name;

    print("enter mobile number");
    String mobileNo = stdin.readLineSync();
    pt["Mobile Number"] = mobileNo;

    print("Enter your valid id");
    String id = stdin.readLineSync();
    pt[id] = stdin.readLineSync();

    ptst = ptst+pt.toString();
    //ptList.add();
  }
  scheduleAppontment(){
    if(drList==null){
      print("Add a doctor");
      addDr();
    }
    print("Enter dr name");
    String name = stdin.readLineSync();
    for(int i = 0;i<drList.length;i++){
      drList[i].getName()==name;
    }
  }
}