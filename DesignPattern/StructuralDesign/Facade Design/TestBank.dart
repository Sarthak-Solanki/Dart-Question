import 'Facade.dart';
class TestBank{
  
}
main(){
  Facade f  =new Facade(12345678,1234);
  f.withdraw(400);
  f.withdraw(200);
  f.depositCash(500);
}