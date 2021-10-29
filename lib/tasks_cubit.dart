import 'package:flutter/material.dart';
import 'package:flutter_app_friday/tasks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import 'archive.dart';
import 'data.dart';
import 'done.dart';

abstract class TasksStates {}

class InitTasksStates extends TasksStates {}

class BottomNavigationStates extends TasksStates {}

class BottomSheetStates extends TasksStates {}

class InsertTaskTasksStates extends TasksStates {}

class GetTasksTasksStates extends TasksStates {}

class DeleteTasksTasksStates extends TasksStates {}

class TasksCubit extends Cubit<TasksStates> {
  TasksCubit(TasksStates initialState) : super(initialState);

  static TasksCubit get(context) => BlocProvider.of(context);

  int bottomNavIndex = 0;

  onBottomNavigationChange({@required int newIndex}) {
    bottomNavIndex = newIndex;
    emit(
        BottomNavigationStates()); // emit == setState . emit refresh all blocConsumers
  }

  List<Widget> screens = [
    TasksScreen(),
    DoneScreen(),
    ArchiveScreen(),
  ];

  List<String> titles = ["Tasks", "Done", "Archive"];

  bool isSheetExpanded = false;

  void onSheetStateChange({@required bool isExpanded}) {
    isSheetExpanded = isExpanded;
    emit(BottomSheetStates());
  }

  List<Map> activeList = [];
  List<Map> doneList = [];
  List<Map> archiveList = [];

  Database _database;

  openMyDatabase() {
    // _database = await openDatabase("my.db", version: 1,
    //     onCreate: (Database db, int version) async {
    //       // When creating the db, create the table
    //       await db.execute(
    //           'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    //     }
    //     );

    // openDatabase("my.db", version: 1,
    //     onCreate: (Database db, int version) async {
    //       // When creating the db, create the table
    //       await db.execute(
    //           'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    //     }).then((value) {
    //       _database = value;
    // });
    openDatabase(
      "my.db",
      version: 1,
      onCreate: (Database db, int version) async {
        print('Database created');
        // When creating the db, create the table
        await db.execute(
            'CREATE TABLE Tasks(id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)');
        print('Table created');
      },
      onOpen: (db) {
        _database = db;
        print('Database open');
        // insertTask();
        getTasks(status: "active");
        getTasks(status: "done");
        getTasks(status: "archive");
      },
    );
  }

  insertTask({
    @required String title,
    @required String date,
    @required String time,
    String status = "active"
  }) async {
    // status => active, done, archive
    await _database.transaction((txn) async {
      txn
          .rawInsert(
              'INSERT INTO Tasks(title, date, time, status) VALUES("$title", "$date", "$time", "$status")')
          .then((value) {
        print('Raw id => $value');
        emit(InsertTaskTasksStates());
        getTasks(status: status);
      }).catchError((error) {
        print('Raw error => $error');
      });
    });
  }

  getTasks({@required String status}) async {
    // Get the records

    _database
        .rawQuery('SELECT * FROM Tasks WHERE status = "$status"')
        .then((value) {
      if (status == "active")
        activeList = value;
      else if (status == "done")
        doneList = value;
      else if (status == "archive") archiveList = value;

      emit(GetTasksTasksStates());
    });

    // List<Map> expectedList = [
    //   {'name': 'updated name', 'id': 1, 'value': 9876, 'num': 456.789},
    //   {'name': 'another name', 'id': 2, 'value': 12345678, 'num': 3.1416}
    // ];
    // print(expectedList[1]['num']);
  }

  var deletedTask;

  deleteTask({@required task}) {
    deletedTask = task;
    // Delete a record
    _database.rawDelete(
        'DELETE FROM Tasks WHERE id = ?', ['${task['id']}']).then((value) {
      print('Task Deleted');
      emit(DeleteTasksTasksStates());
      getTasks(status: "active");
      getTasks(status: "done");
      getTasks(status: "archive");
    }).catchError((error) {
      print('Task deleted error => $error');
    });
  }

  undoDelete() {
    insertTask(
      title: deletedTask['title'],
      date: deletedTask['date'],
      time: deletedTask['time'],
      status: deletedTask['status']
    );
  }

  updateTask({@required String status, @required int id}) async {
    // Update some record
    await _database
        .rawUpdate('UPDATE Tasks SET status = ? WHERE id = ?', ['$status', id]);
    print('Task updated');
  }
}
