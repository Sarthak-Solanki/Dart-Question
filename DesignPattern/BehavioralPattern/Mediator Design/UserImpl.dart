import 'User.dart' ;
import 'ChatMediator.dart';
class UserImpl extends User{


  UserImpl(ChatMediator cm,String name):super(cm,name);

  send(String msg){
    print(this.name+" is sending message "+msg);
    mediator.sendMessage(msg, this);
  }
  @override
  receive(String msg) {
    print(this.name+" has received message "+msg);
  }
}