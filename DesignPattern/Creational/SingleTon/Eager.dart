class Eager{
  Eager._internal();
  static Eager obj = new Eager._internal() ;
  static Eager  getInstance(){
    /*if(obj==null){
      obj = new Eager._internal();
    }*/
    return obj;
  }
}
main(){
  //Eager e = new Eager();
  Eager ea = Eager.getInstance();
  Eager ea2 = Eager.getInstance();
  print(ea.hashCode);
  print(ea2.hashCode);
}