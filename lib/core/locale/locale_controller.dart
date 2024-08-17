import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/core/services/settings_services.dart';

final SettingsServices settingsServices = Get.find<SettingsServices>();

class AppLocaleController extends GetxController {
  Locale initLocale = settingsServices.prefs.getString('locale') == null
      ? Get.deviceLocale!
      : Locale(settingsServices.prefs.getString('locale')!);

  void changeLocale(String codeLocale) {
    Locale locale = Locale(codeLocale);
    settingsServices.prefs.setString('locale', codeLocale);
    Get.updateLocale(locale);
  }
}
