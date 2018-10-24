import 'Node.dart';
class UnOrderList<G> {
  Node head;
  int size = 0;

  void add(var data) {
    size++;
    Node node = new Node(data);
    if (head == null) {
      head = node;
    }
    else {
      Node n = head;
      while (n.next != null) {
        n = n.next;
      }
      n.next = node;
    }
  }

  void display() {
    Node n = head;
    while (n != null) {
      print(n.data);
      n = n.next;
    }
  }

  void remove(data) {
    Node n = head;
    if (n.data == data) {
      head = head.next;
      size--;
    }
    else {
      Node temp = head;
      Node between = temp.next;
      Node after = between.next;
      while (between.next != null) {
        if (between.data == data) {
          temp.next = after;
          size--;
        }
        temp = temp.next;
        between = between.next;
        after = after.next;
      }
    }
  }

  int length() {
    return size;
  }

  bool find(data) {
    bool b = false;
    Node n = head;
    while (n.data != data && n.next != null) {
      n = n.next;
    }
    if (n.data == data) {
      remove(data);
    }
    else {
      add(data);
      b = true;
    }
    return b;
  }
  bool isEmpty(){
    return size==0;
  }
  G pop(int pos){
    Node temp = head;
    Node prev = null;
    var d = null;
    if(pos == 0){
      var data  = head.data;
      head = head.next;
      size--;
      return data;
    }
    for(int i = 0;i<size;i++){
      if(i==pos){
        prev.next = temp.next;
        size--;
        return d;
      }
      prev = temp;
      d = temp.data;
      temp = temp.next;
      return null;
    }
  }
}
