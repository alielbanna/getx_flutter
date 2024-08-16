import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/view/page_one.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  //push
                  Get.to(() => const PageOne());
                  //pushReplacement
                  //Get.off(const PageOne());
                  //pushAndRemoveUntil
                  //Get.offAll(const PageOne());
                },
                child: const Text('Page 1'),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text('Page 2'),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text('Page 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
