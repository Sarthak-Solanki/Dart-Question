import 'dart:io';
import 'package:quiver/time.dart';

main() {
  print('Enter 0 to start watch and 1 to stop it');
  var d, s, fina;
  int i = stdin.readByteSync() - 48;
  if (i == 0) {
    //var d = new DateTime.now();
    d = systemTime().millisecondsSinceEpoch;
  }
stdin.readLineSync();
  int j = stdin.readByteSync() - 48;
  if (j == 1) {
    s = systemTime().millisecondsSinceEpoch;
  }
  stdout.write((s - d) / 1000  );
  print(' Seconds');
}
