import 'package:flutter/material.dart';
import 'package:flutter_app_friday/data.dart';
import 'package:flutter_app_friday/tasks_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components.dart';

class ArchiveScreen extends StatefulWidget {
  @override
  _ArchiveScreenState createState() => _ArchiveScreenState();
}

class _ArchiveScreenState extends State<ArchiveScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TasksCubit, TasksStates>(
      builder: (context, state) {
        TasksCubit cubit = TasksCubit.get(context);
        return buildTasksListView(cubit.archiveList, cubit);
      },
      listener: (context, state) {},
    );
  }
}
