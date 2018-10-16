import 'dart:io';
import 'dart:async';
main() {
  List main = new List();
  main.addAll([1,2,4,6,3,5,7,24,45,77,82]);
  print(main);
  divide(main);
  for (int k2 = 0; k2 < main.length; k2++) {
    print(main[k2]);
  }
}
void divide(List main) {
  int n = main.length;
  if(n<2)
    return;

  int mid = (n/2).round();

  List left = new List(mid);
  List right = new List(n-mid);
  for (int i = 0; i <= mid-1; i++) {
    left[i] = main[i];
  }
  for (int i = mid; i <= n-1; i++) {
    right[i-mid] = main[i];
  }
  divide(left);
  divide(right);
  Merge(left, right, main);
}

void Merge(List l,List r,List main) {
  int ll = l.length;
  int rl =  r.length;
  int i = 0;
  int j = 0;
  int k = 0;
  while(i<ll&&j<rl) {
    if(l[i]<r[j]) {
      main[k] = l[i];
      i++;
      k++;
    }
    else {
      main[k] = r[j];
      j++;
      k++;
    }
  }
  while(i<ll) {
    main[k] = l[i];
    i++;
    k++;
  }
  while(j<rl) {
    main[k] =r[j];
    j++;
    k++;
  }
}


