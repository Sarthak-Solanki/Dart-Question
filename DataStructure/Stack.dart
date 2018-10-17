import 'Node.dart';

Node head;
int size = 0;

void push(data) {
  Node node = new Node(data);
  node.next = null;
  if (head == null) {
    head = node;
    size++;
    return;
  } else {
    Node n = head;
    while (n.next != null) {
      n = n.next;
    }
    n.next = node;
    size++;
    return;
  }
}

String pop() {
  Node prev = null;
  if (isEmpty()) {
    print("Stack is Empty cant pop the data");
  } else {
    Node n = head;
    while (n.next != null) {
      prev = n;
      n = n.next;
    }
    if (prev == null) {
      head = null;
      size--;
    }
    if (!isEmpty()) {
      prev.next = null;
    }
    size--;
    return prev.data;
  }
}

String peek() {
  Node n = head;
  while (n.next != null) {
    n = n.next;
  }
  return n.data;
}

bool isEmpty() {
  return size == 0;
}

void display() {
  Node n = head;
  while (n != null) {
    print(n.data);
    n = n.next;
  }
}
