import 'package:flutter/material.dart';
import 'home.dart';

Widget myTextFormField(
    {@required TextEditingController controller,
    @required FormFieldValidator<String> validator,
    TextInputAction inputAction = TextInputAction.next,
    TextInputType inputType = TextInputType.text,
    @required IconData prefixIcon,
    @required String label,
    bool obscureText = false,
    Widget suffixIcon,
    GestureTapCallback onTap}) {
  return TextFormField(
    onTap: onTap,
    controller: controller,
    obscureText: obscureText,
    validator: validator,
    textInputAction: inputAction,
    keyboardType: inputType,
    decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        labelText: label,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder()),
  );
}

Widget buildTasksListView(List<Map<dynamic, dynamic>> list) {
  Widget buildTaskItem(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                list[index]['title'],
                style: TextStyle(fontSize: 20),
              )),
              IconButton(
                icon: Icon(
                  Icons.done_all,
                  color: Colors.blue,
                ),
                onPressed: () {
                  updateTask(status: "done", id: list[index]['id']);
                  getTasks(status: "active");
                  getTasks(status: "done");
                  getTasks(status: "archive");
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.archive,
                  color: Colors.blue,
                ),
                onPressed: () {
                  updateTask(status: "archive", id: list[index]['id']);
                  getTasks(status: "active");
                  getTasks(status: "done");
                  getTasks(status: "archive");
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date : ${list[index]['date']}",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Time : ${list[index]['time']}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }

  return ListView.separated(
    itemCount: list.length,
    separatorBuilder: (BuildContext context, int index) => SizedBox(
      height: 10,
    ),
    itemBuilder: (BuildContext context, int index) => buildTaskItem(index),
  );
}
