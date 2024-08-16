import 'package:get/get.dart';

class HomePageController extends GetxController {
  int counter = 0;
  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}

// class HomePageController extends GetxController {
//   RxInt counter = 0.obs;
//   void increment() {
//     counter++;
//   }

//   void decrement() {
//     counter--;
//   }
// }
