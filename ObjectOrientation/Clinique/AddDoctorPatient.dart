import 'dart:io';
import 'Doctor.dart';
import 'Patient.dart';
import 'dart:convert';
class AddDoctorPatient{
  List<Doctor> drList = new List();
  List<Patient> ptList = new List();
  String drst = "";
  String ptst = "";
  int ptcount = 0;
  var vary = 0;
  readDr(){
    File f = new File("/home/administrator/Clinique/Doctor.json");
    String s = f.readAsStringSync();
    if(!s.isEmpty){
      List sp = jsonDecode(s);
      Doctor doc;
      for(Map<String, dynamic> item in sp)
      {
        doc = new Doctor.fromJson(item);
        drList.add(doc);
      }
    }
  }
  readPt(){
    File f = new File("/home/administrator/Clinique/Patient.json");
    String s = f.readAsStringSync();
    if(!s.isEmpty){
      List sp = jsonDecode(s);
      Patient pat;
      for(Map<String, dynamic> item in sp)
      {
        pat = new Patient.fromJson(item);
        ptList.add(pat);
      }
    }
  }
  readReport(){
    File f = new File("/home/administrator/Clinique/report.json");
    String s = f.readAsStringSync();
  }
  showDr(){
    for(int i = 0;i<drList.length;i++){
      print(drList[i].getName()+" "+drList[i].getAppointemntNo().toString()+" "+drList[i].getSpecialization());
    }
    addDrPt();
  }
  showPt(){
    for(int i = 0;i<ptList.length;i++){
      print("Name is: "+ptList[i].getNAme()+" ID is "+ptList[i].getid()+" Mobile number is "+ptList[i].getMobile());
    }
    addDrPt();
  }
  addDrPt(){
    print("0 to add doctor");
    print("1 to add patient");
    print("2 to schedule appointment");
    print("3 to show popular doctor");
    print("4 to write to file of dr");
    print("5 to write to file of pt");
    print("6 to show all doctor");
    print("7 to show all patient");
    int add = int.parse(stdin.readLineSync());
    if(add==0){
      addDr();
    }
    else if(add==1){
      addPatient();
    }
    else if(add==2){
      scheduleAppointment();
    }
    else if(add==3){
      getPopularDr();
    }
    else if(add == 4 ){
      writeFileDr();
    }
    else if(add==5){
      writeFilePt();
    }
    else if(add==6){
      showDr();
    }
    else if(add==7){
      showPt();
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
    Doctor drcl = new Doctor(name, id, speciality,0);
    drList.add(drcl);
    addDrPt();
  }
  addPatient(){
    Map pt = new Map();
    print("Enter Patient name");
    String name = stdin.readLineSync();
    pt["name"] = name;

    print("Enter mobile number");
    String mobileNo = stdin.readLineSync();
    pt["Mobile Number"] = mobileNo;

    print("Enter Patient valid id");
    String id = stdin.readLineSync();
    pt["id"] = id;

    print("Enter age of patient");
    int age = int.parse(stdin.readLineSync());
    pt["age"] = age;

    Patient pts = new Patient(name, id, mobileNo, age);
    ptList.add(pts);

    if(vary==0){
      addDrPt();}
  }
  scheduleAppointment(){
    if(drList.length==0){
      print("Add a doctor");
      addDr();
    }
    else{
      vary = 1;
      print("Enter dr name");
      String name = stdin.readLineSync();
      for(int i = 0;i<drList.length;i++){
        if(drList[i].getName()==name){
          if(drList[i].getAppointemntNo()<5){
            if(ptList==null){
              addPatient();
            }
            else{
              print("Enter Patient id number");
              String ptid = stdin.readLineSync();
              for(int j = 0;j<ptList.length;j++){
                if(ptList[j].getid()==ptid){
                  drList[i].setAppointemntNo();
                  print("Apointment booked for "+ ptList[j].getNAme());
                  vary=0;
                  addDrPt();
                }
              }
            }
          }
          else {
            print("Date isnt available for today get back tommorow");
            int input = int.parse(stdin.readLineSync());
            addDrPt();
          }
        }
      }
    }
  }
  getPopularDr(){
    for(int k = 1;k<drList.length;k++) {
      for(int i=0;i<drList.length-1;i++) {
        //int j = ;
        if(drList[i].getAppointemntNo()<drList[i+1].getAppointemntNo()) {
          Doctor temp = drList[i];
          drList[i] = drList[i+1];
          drList[i+1] = temp;
        }
      }
    }
    for(int i = 0;i<drList.length;i++){
      print(drList[i].getName()+" "+" has Appointment: "+drList[i].getAppointemntNo().toString());
    }
  }
  writeFileDr(){
    String sp = json.encode(drList);
    File f = new File("/home/administrator/Clinique/Doctor.json");
    f.writeAsStringSync(sp);
  }
  writeFilePt(){
    String sp = json.encode(ptList);
    File f = new File("/home/administrator/Clinique/Patient.json");
    f.writeAsStringSync(sp);
  }
}
main(){

  AddDoctorPatient adp = new AddDoctorPatient();

  adp.readDr();
  adp.readPt();
  adp.addDrPt();
  //adp.getPopularDr();
  //adp.displayList();

}