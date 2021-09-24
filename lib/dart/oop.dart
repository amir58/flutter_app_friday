import 'package:flutter_app_friday/dart/student.dart';

import 'human.dart';


void main() {
  // var names = List.filled(8, "");
  // var ages = List.filled(8, 0);
  // var weights = List.filled(8, 0.0);
  // var heights = List.filled(8, 0.0);
  //
  // for (int x = 0; x < 8; x++) {
  //   names[x] = stdin.readLineSync();
  //   ages[x] = int.tryParse(stdin.readLineSync());
  //   weights[x] = double.tryParse(stdin.readLineSync());
  //   heights[x] = double.tryParse(stdin.readLineSync());
  // }

  // var objectName = new Human();
  Human.gender = "Male";

  var student = Student("1234432", "Ahmed", 20, 180.6, 87.5);

  student.test();

  print(student.name);

  student.age = 10;

  student.setAge(11);

  print(student.age);

  // var human1 = new Human.print("Amir", 20, 180, 80);
  //
  // var human2 = new Human.print("Ali", 22, 170, 60);
  //
  // var student1 = new Student("2019262", "Ahmed", 30, 190, 80);
  // student1.printData();

}
