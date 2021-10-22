import 'package:flutter/material.dart';
import 'package:flutter_app_friday/data.dart';
import 'components.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return buildTasksListView(activeList);
  }



}
