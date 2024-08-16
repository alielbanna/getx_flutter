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

  //like initialState
  @override
  void onInit() {
    print("Init HomePageController");
    super.onInit();
  }

  //after render - after build
  @override
  void onReady() {
    print("Ready HomePageController");
    super.onReady();
  }

  //like dispose
  @override
  void onClose() {
    print("Close HomePageController");
    super.onClose();
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
