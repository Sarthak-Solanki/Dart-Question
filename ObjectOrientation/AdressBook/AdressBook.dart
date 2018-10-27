import 'dart:io';
import 'Person.dart';
import 'dart:convert';

class AdressBook {
  String st = "";
  File f;
  Map map = new Map();
  addData() {
    print("Enter Name");
    String name = stdin.readLineSync();
    print("Enter Adress");
    String adress = stdin.readLineSync();
    print("Enter your zip code");
    int zipcode = int.parse(stdin.readLineSync());
    print("Enter your phone number without +91");
    String phno = stdin.readLineSync();
    Person p = new Person(name, adress, zipcode, phno);
    l.add(p);
  }
  List<Person> l = new List<Person>();


  void DataManipulation() {
    readFile();
    print("Enter 0 to add data 1 to remove data and 2 to edit data and 3 to print and to save changes");
    int i = int.parse(stdin.readLineSync());
    if (i == 0) {
      addData();
      DataManipulation();
    } else if (i == 1) {
      removeData();
      DataManipulation();
    } else if (i == 2) {
      printData();
      print("if you want to sort the data enter 0");
      int so = int.parse(stdin.readLineSync());
      if (so == 0) {
        print("on what basis you want to sort 0 for Name Basis and 1 for ZipCode bases");
        int n = int.parse(stdin.readLineSync());
        if (n == 0) {
          sortName();
        } else {
          sortZip();
        }
      }
      printData();
      editData();
      DataManipulation();
    } else if (i == 3) {
      printData();
      String st = l.toString();
    }
    DataManipulation();
  }

  removeData() {
    print("Enter name of the person");
    String name = stdin.readLineSync();
    print("Enter phone number of the person");
    String phno = stdin.readLineSync();
    bool b = false;
    for (int i = 0; i < l.length; i++) {
      if (l[i].phno == phno && l[i].name == name) {
        l.removeAt(i);
        b = true;
        return;
      }
    }
    if (b == false) {
      print("Data Mismatch Cant Be remove");
    } else
      print("Data removed Succesfull");
  }

  editData() {
    print("Enter Name And Contact number of person you want to edit");
    String name = stdin.readLineSync();
    String phNo = stdin.readLineSync();
    for (int i = 0; i < l.length; i++) {
      if (l[i].phno == phNo && l[i].name == name) {
        print("Enter what you want to change");
        String s = stdin.readLineSync();
        if (s == "zipcode") {
          print("Enter new zip code");
          int zipcode = int.parse(stdin.readLineSync());
          l[i].setzip(zipcode);
        } else if (s == "number") {
          print("Enter new number");
          String num = stdin.readLineSync();
          l[i].setphno(num);
        } else if (s == "adress") {
          print("Enter adress");
          String adress = stdin.readLineSync();
          l[i].setadress(adress);
        }
      }
    }
    printData();
  }

  printData() {
Map map = new Map();
    for (int i = 0; i < l.length; i++) {
      st = st+ "\n"+
          "Name :"+l[i].name +
          " Phone num:  " + l[i].phno +
          " Adress: " + l[i].adress +
          " ZipCode " + l[i].zip.toString();
    }
    String sp = json.encode(st);
    print("Sp is :: *******************"+sp);
    print("Do you want to write changes to file? 0 for yes");
    int input = int.parse(stdin.readLineSync());
    if(input==0){
      writeToFile(st);
    }
    st="";
  }


  sortName() {
    for (int k = 1; k < l.length; k++) {
      for (int i = 0; i < l.length - 1; i++) {
        if (l[i].name.compareTo(l[i + 1].name) > 0) {
          Person temp = l[i];
          l[i] = l[i + 1];
          l[i + 1] = temp;
        }
      }
    }
  }

  sortZip() {
    for (int k = 1; k < l.length; k++) {
      for (int i = 0; i < l.length - 1; i++) {
        if (l[i].zip > l[i + 1].zip) {
          Person temp = l[i];
          l[i] = l[i + 1];
          l[i + 1] = temp;
        }
      }
    }
  }
  void writeToFile(String l){
    Map map = new Map();

    f.writeAsStringSync(l);
  }
  void readFile(){
    f = new File("/home/administrator/DirectoryExample/AdressBook.json");
    String s = f.readAsStringSync();
    print(s);
  }
}

main() {
  AdressBook ab = new AdressBook();
  ab.DataManipulation();
}
