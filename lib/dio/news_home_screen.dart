import 'package:flutter/material.dart';
import 'package:flutter_app_friday/dio/application_cubit.dart';
import 'package:flutter_app_friday/dio/business_screen.dart';
import 'package:flutter_app_friday/dio/news_cubit.dart';
import 'package:flutter_app_friday/dio/science_screen.dart';
import 'package:flutter_app_friday/dio/search_screen.dart';
import 'package:flutter_app_friday/dio/simple_api.dart';
import 'package:flutter_app_friday/dio/sports_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsHomeScreen extends StatelessWidget {
  List<String> title = [
    'Business',
    'Sports',
    'Science'
  ];

  List<Widget> screen = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        NewsCubit cubit = NewsCubit.get(context);

        return Scaffold(
          appBar: AppBar(title: Text(title[cubit.bottomNavigationIndex]),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen(),));
            },),
            IconButton(icon: Icon(Icons.lightbulb), onPressed: () {
                ApplicationCubit.get(context).changeThemeMode();
            },),
          ],
          ),
          body: screen[cubit.bottomNavigationIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.bottomNavigationIndex,
            onTap: (value) {
              cubit.changeBottomNavigationIndex(value);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.business, ), label:"Business" ),
              BottomNavigationBarItem(icon: Icon(Icons.sports,), label: "Sports"),
              BottomNavigationBarItem(icon: Icon(Icons.science, ), label: "Science"),
            ],
          ),
        );
      },
    );
  }

}

