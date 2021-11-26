import 'package:shared_preferences/shared_preferences.dart';

// Singleton
class MyShared {

  static SharedPreferences preferences;

  static init() async{
    preferences = await SharedPreferences.getInstance();
  }

  static bool getBoolean(String key){
    return preferences.getBool(key);
  }

  static void saveBoolean(String key, bool value) async{
    await preferences.setBool(key, value);
  }

}