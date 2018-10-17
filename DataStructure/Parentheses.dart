import 'dart:io';
import 'Stack.dart';

main() {
  print('Enter your expression');
  String s = stdin.readLineSync();
  print(s);
  int count = 0;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(') {
      push('(');
    }

    if (s[i] == ')') if (!isEmpty()) {
      pop();
    }
    if (isEmpty()) {
      pop();
      count++;
    }
  }

  if (isEmpty() && count == 0) {
    print('balanced');
  } else
    print('unbalanced');
}
