import 'package:flutter/material.dart';
import 'package:flutter_app_friday/components.dart';
import 'package:flutter_app_friday/data.dart';

class DoneScreen extends StatefulWidget {
  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return buildTasksListView(doneList);
  }
}
