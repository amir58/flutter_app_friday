import 'package:flutter/material.dart';
import 'package:flutter_app_friday/dio/news_webview.dart';
import 'package:flutter_app_friday/tasks_cubit.dart';
import 'home.dart';

Widget myNewsListView(List<dynamic> news) {
  return news.isEmpty
      ? Center(child: CircularProgressIndicator.adaptive())
      : ListView.builder(
    itemCount: news.length,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(
            builder: (context) => NewsWebView(news[index]['url']),));
        },
        child: Container(
            height: 300,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.grey[200],
            ),
            child: Column(
              children: [
                Container(
                  child: Image.network(
                    news[index]['urlToImage'] ?? "",
                  ),
                  width: 300,
                  height: 200,
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(child: Text(news[index]['title'], style: Theme.of(context).textTheme.bodyText1,)),
              ],
            )),
      );
    },
  );
}




Widget myTextFormField({@required TextEditingController controller,
  @required FormFieldValidator<String> validator,
  TextInputAction inputAction = TextInputAction.next,
  TextInputType inputType = TextInputType.text,
  @required IconData prefixIcon,
  @required String label,
  bool obscureText = false,
  Widget suffixIcon,
  GestureTapCallback onTap,
  ValueChanged<String> onFieldSubmitted,
}) {
  return TextFormField(
    onTap: onTap,
    onFieldSubmitted: onFieldSubmitted,
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

Widget buildTasksListView(List<Map<dynamic, dynamic>> list, TasksCubit cubit) {
  Widget buildTaskItem(int index) {
    return Dismissible(
      key: Key(list[index]['id'].toString()),
      onDismissed: (direction) {
        cubit.deleteTask(task: list[index]);
      },
      child: Container(
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
                    cubit.updateTask(status: "done", id: list[index]['id']);
                    cubit.getTasks(status: "active");
                    cubit.getTasks(status: "done");
                    cubit.getTasks(status: "archive");
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.archive,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    cubit.updateTask(status: "archive", id: list[index]['id']);
                    cubit.getTasks(status: "active");
                    cubit.getTasks(status: "done");
                    cubit.getTasks(status: "archive");
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
      ),
    );
  }

  return ListView.separated(
    itemCount: list.length,
    separatorBuilder: (BuildContext context, int index) =>
        SizedBox(
          height: 10,
        ),
    itemBuilder: (BuildContext context, int index) => buildTaskItem(index),
  );
}
