import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SimpleApiScreen extends StatefulWidget {
  const SimpleApiScreen({Key key}) : super(key: key);

  @override
  _SimpleApiScreenState createState() => _SimpleApiScreenState();
}

class _SimpleApiScreenState extends State<SimpleApiScreen> {
  List<dynamic> posts = [];
  List<dynamic> news = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews(category: "Science");
  }

  void getPosts() async {
    var response =
        await Dio().get("https://jsonplaceholder.typicode.com/posts");
    print(response);
    posts = response.data;
    print('Posts length => ${posts.length}');
    setState(() {});
  }

  void getPost() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts/1');
      print(response);
      print('userId => ${response.data['userId']}');
      print('id => ${response.data['id']}');
      print('title => ${response.data['title']}');
      print('body => ${response.data['body']}');
    } catch (e) {
      print(e);
    }
  }

  void getNews({String country = "eg", String category = "business"}) async {
    var response = await Dio().get(
        "https://newsapi.org/v2/top-headlines",
    queryParameters: {
          'country':country,
          'category':category,
          'apiKey':'fa72aea7f1af46a6a45be8aa23e21b64',
    });

    news = response.data['articles'];

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200]),
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
                  Expanded(child: Text(news[index]['title'])),
                ],
              ));
        },
      ),
    );
  }
}
