import 'dart:io';
class NumberOfBinaryTree{
  int factorial(int n){
    int factorial = 1;
    for(int i =n;i>=1;i--){
      factorial = factorial*i;
    }
    return factorial;
  }

}
main(){
  print('Enter n');
  int n = int.parse(stdin.readLineSync());
  NumberOfBinaryTree nb = new NumberOfBinaryTree();
  int up = nb.factorial(2*n);
  int deno = nb.factorial(n+1);
  int den2 = nb.factorial(n);
 int BinaryPossible = ((up)/(deno*den2)).toInt();
 print('Total num of binary possible are $BinaryPossible');
}