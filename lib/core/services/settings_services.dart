import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  late SharedPreferences prefs;

  Future<SettingsServices> init() async {
    prefs = await SharedPreferences.getInstance();
    return this;
  }
}
