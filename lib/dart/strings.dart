import 'dart:io';

void main() {






  // equal , isEmpty , isNotEmpty , startWith , replaceAll
  // length , contains , split , concat , toLowerCase
  // toUpperCase , trim


  String course = "Flutter";

  bool isFlutter = (course == "flutter");

  print(isFlutter);

  course += " course";

  print(course);

  print(course.isEmpty);

  print(course.isNotEmpty);

  String phone = " +20111 6036 002 ";

  print(phone.length);

  print('Start with +2 : ${phone.startsWith("+2")}');

  print('Start with 002 : ${phone.startsWith("002")}');

  phone = phone.replaceAll("+2", "").replaceAll("-", "").replaceAll(" ", "");

  if (phone.startsWith("002")) {
    phone = phone.replaceFirst("002", "");
  }

  print(phone);
  print(phone.length);


  print(course.toUpperCase());
  print(course.toLowerCase());

  String searchKey = stdin.readLineSync().toLowerCase();
  print(searchKey);

  String courseLower = course.toLowerCase();
  print(courseLower);

  courseLower.contains(searchKey);

  bool result = "hello world".contains("world");

  print(result);
}
