import 'Node.dart';

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

