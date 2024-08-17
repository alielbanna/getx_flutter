import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  late SharedPreferences prefs;
  RxInt counter = 0.obs;

  Future<SettingsServices> init() async {
    prefs = await SharedPreferences.getInstance();
    counter.value = prefs.getInt('counter') ?? 0;
    return this;
  }

  increment() {
    counter.value++;
    prefs.setInt('counter', counter.value);
  }
}
