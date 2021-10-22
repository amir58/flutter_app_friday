import 'package:flutter/material.dart';
import 'package:flutter_app_friday/archive.dart';
import 'package:flutter_app_friday/components.dart';
import 'package:flutter_app_friday/tasks.dart';
import 'package:sqflite/sqflite.dart';
import 'data.dart';
import 'done.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _bottomNavIndex = 0;

  List<Widget> screens = [
    TasksScreen(),
    DoneScreen(),
    ArchiveScreen(),
  ];

  List<String> titles = ["Tasks", "Done", "Archive"];

  var _scaffoldKey = GlobalKey<ScaffoldState>();
  var _formKey = GlobalKey<FormState>();

  var _titleController = TextEditingController();
  var _dateController = TextEditingController();
  var _timeController = TextEditingController();

  bool _isSheetExpanded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openMyDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(titles[_bottomNavIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (value) {
          _bottomNavIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Tasks"),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: "Done"),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: "Archive"),
        ],
      ),
      floatingActionButton: _bottomNavIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                if (_isSheetExpanded) {
                  if (_formKey.currentState.validate()) {
                    String title = _titleController.text;
                    String date = _dateController.text;
                    String time = _timeController.text;

                    print('Title : $title , Date : $date , Time : $time');

                    insertTask(title: title, date: date, time: time);

                    setState(() {
                      getTasks(status: "active");
                    });

                    Navigator.pop(context);
                  }
                } else {
                  _scaffoldKey.currentState
                      .showBottomSheet((context) => buildBottomSheetItem(),
                          elevation: 20)
                      .closed
                      .then((value) {
                    _isSheetExpanded = false;
                    _titleController.text = "";
                    _dateController.text = "";
                    _timeController.text = "";
                    setState(() {});
                  });

                  _isSheetExpanded = true;
                  setState(() {});
                }
              },
              child: Icon(_isSheetExpanded ? Icons.add : Icons.edit),
            )
          : null,
      body: screens[_bottomNavIndex],
    );
  }

  Widget buildBottomSheetItem() {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            myTextFormField(
              controller: _titleController,
              validator: (value) {
                if (value.isEmpty) {
                  return "Title required";
                }
                return null;
              },
              prefixIcon: Icons.title,
              label: "Title",
            ),
            SizedBox(
              height: 10,
            ),
            myTextFormField(
              onTap: () {
                print('on tap');
                _selectDate();
              },
              controller: _dateController,
              validator: (value) {
                if (value.isEmpty) {
                  return "Date required";
                }
                return null;
              },
              prefixIcon: Icons.date_range_rounded,
              label: "Date",
            ),
            SizedBox(
              height: 10,
            ),
            myTextFormField(
              onTap: () => selectTime(),
              controller: _timeController,
              validator: (value) {
                if (value.isEmpty) {
                  return "Time required";
                }
                return null;
              },
              prefixIcon: Icons.timelapse,
              label: "Time",
            ),
          ],
        ),
      ),
    );
  }

  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate() async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
        _dateController.text =
            "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}";
      });
  }

  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime() async {
    final TimeOfDay picked_s = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child,
          );
        });

    if (picked_s != null && picked_s != selectedTime)
      setState(() {
        selectedTime = picked_s;
        _timeController.text = "${selectedTime.hour}:${selectedTime.minute}";
      });
  }

  selectTime() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child,
        );
      },
    ).then((value) {
      int hour = (value.hour > 12) ? (value.hour - 12) : value.hour;
      String amPm = (value.hour > 12) ? "PM" : "AM";
      _timeController.text = "$hour:${value.minute} $amPm";
    }).catchError((error) {
      print('TimePickerError => ${error.toString()}');
    });
  }

}

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
}) async {
  // status => active, done, archive
  await _database.transaction((txn) async {
    txn
        .rawInsert(
        'INSERT INTO Tasks(title, date, time, status) VALUES("$title", "$date", "$time", "active")')
        .then((value) {
      print('Raw id => $value');
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
    if (status == "active") activeList = value;
    else if (status == "done") doneList = value;
    else if (status == "archive") archiveList = value;

  });

  // List<Map> expectedList = [
  //   {'name': 'updated name', 'id': 1, 'value': 9876, 'num': 456.789},
  //   {'name': 'another name', 'id': 2, 'value': 12345678, 'num': 3.1416}
  // ];
  // print(expectedList[1]['num']);
}

deleteTask({@required int id}) {
  // Delete a record
  _database
      .rawDelete('DELETE FROM Tasks WHERE id = ?', ['$id']).then((value) {
    print('Task Deleted');
  }).catchError((error) {
    print('Task deleted error => $error');
  });
}

updateTask({@required String status, @required int id}) async {
  // Update some record
  await _database
      .rawUpdate('UPDATE Tasks SET status = ? WHERE id = ?', ['$status', id]);
  print('Task updated');
}

