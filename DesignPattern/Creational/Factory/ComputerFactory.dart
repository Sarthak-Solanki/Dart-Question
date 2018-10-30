import 'Computer.dart';
import 'PC.dart';
import 'Server.dart';
class ComputerFactory{
  static Computer createComputer(String type,String Ram,String HDD,String CPU){
    Computer comp = null;
    if(type.toLowerCase()=="pc"){
      comp = new PC(Ram, HDD, CPU);

    }
    else if(type.toLowerCase()=="server"){
      comp = new PC(Ram, HDD, CPU);
    }
    return comp;
  }
}