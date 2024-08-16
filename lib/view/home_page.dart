import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/controller/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //clear from memory
  // final HomePageController controller = Get.put(HomePageController());
  //don't clear from memory
  // final HomePageController controller = Get.put(HomePageController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx( ()=> Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         padding: const EdgeInsets.symmetric(horizontal: 20),
            //         child: IconButton(
            //           onPressed: () {
            //             controller.increment();
            //           },
            //           icon: const Icon(
            //             Icons.add,
            //             size: 40,
            //           ),
            //         ),
            //       ),
            //       Center(
            //         child: Text(
            //           '${controller.counter}',
            //           // '${controller.counter.value}',
            //           style: const TextStyle(fontSize: 30),
            //         ),
            //       ),
            //       Container(
            //         padding: const EdgeInsets.symmetric(horizontal: 20),
            //         child: IconButton(
            //           onPressed: () {
            //             controller.decrement();
            //           },
            //           icon: const Icon(
            //             Icons.remove,
            //             size: 40,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // GetX<HomePageController>(
            GetBuilder<HomePageController>(
              init: HomePageController(),
              builder: (controller) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {
                        controller.increment();
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 40,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      '${controller.counter}',
                      // '${controller.counter.value}',
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {
                        controller.decrement();
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//GetBuilder => update rebuild
//GetX => reactive (steam) 
//Obx => reactive (steam)