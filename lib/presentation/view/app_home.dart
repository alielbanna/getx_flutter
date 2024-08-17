import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/main.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

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
                  prefs!.clear();
                  Get.offAllNamed('/');
                },
                child: const Text('Sing out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
