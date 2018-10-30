import 'ComputerFactory.dart';
import 'Computer.dart';
import 'dart:io';
main(){
  print("Enter what you want Servers or PC");
  String type = stdin.readLineSync();
  print("Enter RAM");
  String RAM = stdin.readLineSync();
  print("Enter HDD");
  String HDD = stdin.readLineSync();
  print("Enter CPU");
  String CPU = stdin.readLineSync();
  Computer c = ComputerFactory.createComputer(type, RAM, HDD, CPU);
  print("CPU: "+c.getCPU()+" HDD: "+c.getHDD()+" RAM: "+c.getRam()+" is given");
}