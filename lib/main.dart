import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_friday/dio/application_cubit.dart';
import 'package:flutter_app_friday/dio/news_home_screen.dart';
import 'package:flutter_app_friday/dio/simple_api.dart';
import 'package:flutter_app_friday/home.dart';
import 'package:flutter_app_friday/old/bmi.dart';
import 'package:flutter_app_friday/old/counter_screen.dart';
import 'package:flutter_app_friday/old/first.dart';
import 'package:flutter_app_friday/old/forget_password.dart';
import 'package:flutter_app_friday/old/messenger_list_view.dart';
import 'package:flutter_app_friday/utils/my_shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_observer.dart';
import 'dio/news_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await MyShared.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    print('Constructor');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => NewsCubit(InitNewsState())..getAllNews()),
          BlocProvider(
            create: (context) => ApplicationCubit(ApplicationInitState())..getSavedThemeMode(),
          ),
        ],
        child: BlocConsumer<ApplicationCubit, ApplicationStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme: TextTheme(
                  bodyText1: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ),
              darkTheme: ThemeData(
                primarySwatch: Colors.grey,
                scaffoldBackgroundColor: Colors.grey,
                textTheme: TextTheme(
                  bodyText1: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),
                )
              ),
              themeMode: ApplicationCubit.get(context).themeMode,
              home: NewsHomeScreen(),
            );
          },
        ));
  }
}
