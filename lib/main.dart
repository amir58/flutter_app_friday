import 'package:flutter/material.dart';
import 'package:flutter_app_friday/bmi.dart';
import 'package:flutter_app_friday/counter_screen.dart';
import 'package:flutter_app_friday/dart/list_view.dart';
import 'package:flutter_app_friday/first.dart';
import 'package:flutter_app_friday/forget_password.dart';
import 'package:flutter_app_friday/home.dart';
import 'package:flutter_app_friday/messenger_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    print('Constructor');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('Build');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
