import 'package:get/get.dart';
import 'package:getx_flutter/controller/home_page_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}
