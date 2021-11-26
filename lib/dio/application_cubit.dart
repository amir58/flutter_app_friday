import 'package:flutter/material.dart';
import 'package:flutter_app_friday/utils/my_shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApplicationStates {}

class ApplicationInitState extends ApplicationStates{}
class ApplicationThemeChangeState extends ApplicationStates{}

class ApplicationCubit extends Cubit<ApplicationStates> {
  ApplicationCubit(ApplicationStates initialState) : super(initialState);

  static ApplicationCubit get(context) => BlocProvider.of(context);

  ThemeMode themeMode = ThemeMode.light;
  bool isLight = true;

  getSavedThemeMode() async{
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // isLight =  prefs.getBool("isLight") ?? true;
    isLight = MyShared.getBoolean("isLight");

    themeMode = (isLight) ? ThemeMode.light : ThemeMode.dark;
    emit(ApplicationThemeChangeState());
  }

  changeThemeMode() async{
    isLight = !isLight;
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setBool("isLight", isLight);
    MyShared.saveBoolean("isLight", isLight);

    themeMode = (isLight) ? ThemeMode.light : ThemeMode.dark;
    emit(ApplicationThemeChangeState());
  }

}