import 'Computer.dart';
class Server implements Computer{
  String _ram;
  String _hdd;
  String _cpu;

  Server(this._ram, this._hdd, this._cpu);
  String getRam(){
    return _ram;
  }
  String getHDD(){
    return _hdd;
  }
  String getCPU(){
    return _cpu;
  }


}