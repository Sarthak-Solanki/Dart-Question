import 'ChatMediator.dart';
import 'ChatMediatorlmpl.dart';
import 'User.dart';
import 'UserImpl.dart';
main(){
ChatMediator cm = new ChatMediatorlmpl();
User u1 = new UserImpl(cm, "Ram");
User u2 = new UserImpl(cm, "Amit");
User u3 = new UserImpl(cm, "Leo");
cm.addUser(u1);
cm.addUser(u2);
cm.addUser(u3);
u1.send("ssup!!");
}