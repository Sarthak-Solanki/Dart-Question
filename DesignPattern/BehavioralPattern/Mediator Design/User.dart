import 'ChatMediator.dart';
abstract class User {
  ChatMediator mediator;
  String name;

  User(ChatMediator cm,String name){
    this.mediator = cm;
    this.name = name;
  }
   send(String msg){

  }
  receive(String msg){

  }
}