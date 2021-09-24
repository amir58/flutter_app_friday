import 'dart:io';

void main(){
  print('Enter number : ');

  String input = stdin?.readLineSync();

  var inputNumber = int.tryParse(input) ?? 0;

  var res = (inputNumber > 10) ? "value greater than 10" : "value lesser than or equal to 10";

  print(res);

}