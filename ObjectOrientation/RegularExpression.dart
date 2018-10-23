import 'dart:io';
class RegularExpression{
  displayMessage(){
    String s = "Hello <<name>>, We have your full name as <<full name>> in our system. "
        +"your contact number is 91-xxxxxxxxxx. "
            +"Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016";
    //print(s);
    print("Enter your first name");
    String fname = stdin.readLineSync();
    print("Enter your Last name");
    String lname = stdin.readLineSync();
    String contact = mobileNum();
    print("Enter today's date in 01/01/1990 this format");
    String date = stdin.readLineSync();
    s = s.replaceAll("<<name>>", fname);
    s = s.replaceAll("<<full name>>", fname+" "+lname);
    s = s.replaceAll("xxxxxxxxxx", contact);
    s = s.replaceAll("01/01/2016", date);
    print(s);

  }
  mobileNum(){
    print("Enter your Contact number with no 91 included");
    String contact = stdin.readLineSync();
    if(contact.length!=10){
      print("Invalid mobile number");
      mobileNum();
    }
  return contact;
  }
}
main(){
RegularExpression re = new RegularExpression();
re.displayMessage();
}