import 'ChatMediator.dart';
import 'User.dart';
import 'UserImpl.dart';
class ChatMediatorlmpl implements ChatMediator{
  List<User> users;
  chatMediatorlmpl(){
    this.users = new List();
  }
  @override
  void addUser(User user) {
    this.users.add(user);
  }
  @override
  sendMessage(String msg,User user){
    for(User u in this.users){
      if(u!=user){
        u.receive(msg);
      }
    }
  }
}