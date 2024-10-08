import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
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
                  // Get.defaultDialog(
                  //   title: 'Title',
                  // );

                  // Get.snackbar(
                  //   'Title',
                  //   'Message',
                  //   backgroundColor: Colors.red,
                  // );

                  Get.bottomSheet(
                    Container(
                      color: Colors.red,
                      height: 200,
                    ),
                  );
                },
                child: const Text('Show BottomSheet'),
                // const Text('Show SnackBar'),
                // const Text('Show Dialog'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
