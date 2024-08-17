import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/core/services/settings_services.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 2; // Runs after SuperMiddleware

  @override
  RouteSettings? redirect(String? route) {
    if (SettingsServices().prefs.getString('role') == 'user') {
      return const RouteSettings(name: '/home');
    }
    if (SettingsServices().prefs.getString('role') == 'admin') {
      return const RouteSettings(name: '/admin');
    }
    return null;
  }
}
