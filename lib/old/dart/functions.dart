import 'package:flutter/foundation.dart';

void main() {
  sumAndPrint(10, 50);

  int result = sum(5, 20);
  print(result);

  String data = getData();
  print(data);

  printUserData(
    name: "amir",
    age: "20",
    phone: "011",
  );
}
// returnType funName ( parameters ) { }
// returnTypes => int , double , String , bool , dynamic , void

void printUserData({
  @required String name,
  @required String age,
  @required String phone,
}) {
  print('Name : $name');
  print('Age : $age');
  print('Phone : $phone');
}

void sumAndPrint(int numberOne, int numberTwo) {
  int result = numberOne + numberTwo;
  print(result);
}

int sum(int numberOne, int numberTwo) {
  int result = numberOne + numberTwo;
  return result;
}

String getData() {
  String data = "Hello Hello Hello Hello Hello Hello Hello Hello ";
  return data;
}
