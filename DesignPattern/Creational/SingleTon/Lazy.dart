class Lazy{
factory Lazy(){

}
  static Lazy obj ;
Lazy._internal();

  static Lazy  getInstance(){
    if(obj==null){
      obj = new Lazy._internal();
    }
    return obj;
  }
}
main(){
  //Eager e = new Eager();
  Lazy ea = Lazy.getInstance();
  Lazy ea2 = Lazy.getInstance();
  print(ea.hashCode);
  print(ea2.hashCode);
}