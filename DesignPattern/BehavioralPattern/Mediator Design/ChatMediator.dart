import 'User.dart';
abstract class ChatMediator{
  void sendMessage(String msg,User user);
  void addUser(User user){
  }
}