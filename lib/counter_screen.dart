import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  _CounterScreenState() {
    print('My Constructor');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('My init state');
  }

  myFun() {
    counter++;
    print(counter);

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    print('My Build');

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print(counter);

          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Counter Screen"),
      ),
      body: Center(
        child: InkWell(
          onTap: () => myFun(),
          child: Text(
            "Counter \n$counter",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
