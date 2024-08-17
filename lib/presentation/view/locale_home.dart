import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/core/locale/locale_controller.dart';

class LocaleHome extends StatelessWidget {
  const LocaleHome({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocaleController localeController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
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
                  localeController.changeLocale('en');
                },
                child: Text('english'.tr),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  localeController.changeLocale('ar');
                },
                child: Text('arabic'.tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
