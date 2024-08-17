import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuperMiddleware extends GetMiddleware {
  @override
  int? get priority => 1; // Priority must be greater than 0

  @override
  RouteSettings? redirect(String? route) {
    return null;
  }
}
