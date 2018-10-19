import 'dart:io';

void main() {
  File f = new File('/home/administrator/HashingFunction.text');
  String st = f.readAsStringSync();
  List l = new List();
  l = st.split(' ');
  int m = 11;
  int n = 11;
  print(l);
  print('Enter your number');
  var userInput  = stdin.readLineSync();
  var x = new List.generate(m, (_) => new List(n));
  String st2 = functionWork(x, l,userInput);
f.writeAsStringSync(st2);
}
String functionWork(var x,List l,var userInput) {
  if (!l.contains(userInput)) {
    print('Adding your input');
    l.add(userInput);
  }
  else if (l.contains(userInput)) {
    print('Removing your input');
    l.remove(userInput);
  }
  for (int i = 0; i < l.length; i++) {
    int count = 0;
    int j = int.parse(l[i]);
    int z = 0;
    z = j % 11;
    while (x[z][count] != null) {
      count++;
    }
    x[z][count] = l[i];
  }
  for (int i = 0; i < x.length; i++) {
    for (int j = 0; j < x.length; j++) {
      if (x[i][j] != null) {
        stdout.write(' ');
        stdout.write(x[i][j]);
      }
    }
    print('');
  }
  List l2 = new List();
  for (int i = 0; i < 11; i++) {
    for (int j = 0; j < 11; j++) {
      if (x[i][j] != null) {
        l2.add(x[i][j]);
      }
    }
  }
  print(l2);
  String st2 = '';
  for (int i = 0; i < l.length; i++){
    st2 = st2+l2[i];
    st2 = st2+" ";
}
return st2;
}
