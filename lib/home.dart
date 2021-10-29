import 'package:flutter/material.dart';
import 'package:flutter_app_friday/archive.dart';
import 'package:flutter_app_friday/components.dart';
import 'package:flutter_app_friday/tasks.dart';
import 'package:flutter_app_friday/tasks_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'data.dart';
import 'done.dart';

class HomeScreen extends StatelessWidget {
  BuildContext context;

  var _scaffoldKey = GlobalKey<ScaffoldState>();
  var _formKey = GlobalKey<FormState>();

  var _titleController = TextEditingController();
  var _dateController = TextEditingController();
  var _timeController = TextEditingController();

  TasksCubit cubit;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   openMyDatabase();
  // }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return BlocProvider(
      create: (context) => TasksCubit(InitTasksStates())..openMyDatabase(),
      child: BlocConsumer<TasksCubit, TasksStates>(
        builder: (context, state) {
          cubit = TasksCubit.get(context);

          return Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              title: Text(cubit.titles[cubit.bottomNavIndex]),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.bottomNavIndex,
              onTap: (value) {
                cubit.onBottomNavigationChange(newIndex: value);
                // cubit.bottomNavIndex = value;
                // setState(() {});
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Tasks"),
                BottomNavigationBarItem(icon: Icon(Icons.done), label: "Done"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.archive), label: "Archive"),
              ],
            ),
            floatingActionButton: cubit.bottomNavIndex == 0
                ? FloatingActionButton(
                    onPressed: () {
                      if (cubit.isSheetExpanded) {
                        if (_formKey.currentState.validate()) {
                          String title = _titleController.text;
                          String date = _dateController.text;
                          String time = _timeController.text;

                          print('Title : $title , Date : $date , Time : $time');

                          cubit.insertTask(
                              title: title, date: date, time: time);

                          // setState(() {
                          //   getTasks(status: "active");
                          // });

                          Navigator.pop(context);
                        }
                      } else {
                        _scaffoldKey.currentState
                            .showBottomSheet(
                                (context) => buildBottomSheetItem(),
                                elevation: 20)
                            .closed
                            .then((value) {
                          _titleController.text = "";
                          _dateController.text = "";
                          _timeController.text = "";

                          cubit.onSheetStateChange(isExpanded: false);
                          // cubit.isSheetExpanded = false;
                          // setState(() {});
                        });

                        cubit.onSheetStateChange(isExpanded: true);
                        // cubit.isSheetExpanded = true;
                        // setState(() {});
                      }
                    },
                    child: Icon(cubit.isSheetExpanded ? Icons.add : Icons.edit),
                  )
                : null,
            body: cubit.screens[cubit.bottomNavIndex],
          );
        },
        listener: (context, state) {
          if(state is DeleteTasksTasksStates){
            print('Delete state');
            showSnackBar();
          }

        },
      ),
    );
  }

  void showSnackBar(){
   var snackBar  = SnackBar(
      content: Text('Task deleted'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          cubit.undoDelete();
        },
      ),
    );

   _scaffoldKey.currentState.showSnackBar(snackBar);
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
    if (picked != null && picked != _selectedDate) {
      _selectedDate = picked;
      _dateController.text =
          "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}";
    }
  }

  TimeOfDay selectedTime = TimeOfDay.now();

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
