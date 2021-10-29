import 'package:flutter/material.dart';
import 'package:flutter_app_friday/components.dart';
import 'package:flutter_app_friday/data.dart';
import 'package:flutter_app_friday/tasks_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoneScreen extends StatefulWidget {
  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TasksCubit, TasksStates>(
      builder: (context, state) {
        TasksCubit cubit = TasksCubit.get(context);
        return buildTasksListView(cubit.doneList , cubit);      },
      listener: (context, state) {

      },
    );
  }
}
