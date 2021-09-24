import 'dart:io';

void main() {
  // var names = new List(); => WRONG
  var names = new List.filled(7, ""); // => FIXED LIST
  print(names);
  print(names.length); // length = 7 > 0 : 6

  // DYNAMIC LIST
  var dynamicNames = new List.filled(0, "", growable: true);
  dynamicNames.add("Amir");
  dynamicNames.add("Ahmed");

  print('Enter list size : ');
  String input = stdin.readLineSync();
  int listSize = int.tryParse(input) ?? 0;

  for (int x = 0; x < listSize; x++) {
    print('Enter name : ');
    var name = stdin.readLineSync();
    dynamicNames.add(name);
  }

  bool isAmirFound = dynamicNames.contains("Amir");

  dynamicNames.forEach((element) {
    print("Name : $element");
  });

  print(dynamicNames);

  print('dynamicNames');
}
