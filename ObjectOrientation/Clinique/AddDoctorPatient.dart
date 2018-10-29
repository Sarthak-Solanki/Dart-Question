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
    List sp = jsonDecode(s);
    Doctor doc;
    for(Map<String, dynamic> item in sp)
    {
      doc = new Doctor.fromJson(item);
      drList.add(doc);
    }
  }
  readPt(){
    File f = new File("/home/administrator/Clinique/Patient.json");
    String s = f.readAsStringSync();
    List sp = jsonDecode(s);
    Patient pat;
    for(Map<String, dynamic> item in sp)
    {
      pat = new Patient.fromJson(item);
      ptList.add(pat);
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
  }
  showPt(){
    for(int i = 0;i<ptList.length;i++){
      print(ptList[i].getNAme()+" "+ptList[i].getid()+" "+ptList[i].getid()+" "+ptList[i].getMobile());
    }
  }
  addDrPt(){
    print("0 to add doctor");
    print("1 to add patient");
    print("2 to schedule appointment");
    print("3 to show popular doctor");
    print("4 to write to file of dr");
    print("5 to write to file of pt");

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
      //  showPopularDr();
    }
    else if(add == 4 ){
      writeFileDr();
    }
    else if(add==5){
      writeFilePt();
    }
    else
      displayList();
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
    pt[id] = id;

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
  void displayList(){
    drList.forEach((dr)=>print(dr.getName()+" "+dr.getDate()));
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
  adp.addDrPt();
  adp.displayList();

}