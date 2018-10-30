class Protype{
  List _book;
  Protype(){
    _book  = new List();
  }
  addData(){
    _book.add("1. Inovate future");
    _book.add("2. learn java");
    _book.add("3. dart & flutter");
    _book.add("4. Developer home");
    _book.add("5. StartUp Address");
  }
  getList(){

    return _book;

  }

  Object clone(){
    List temp = new List();
    for(String s in this.getList()){
    temp.add(s);
    }
    return temp;
  }

}