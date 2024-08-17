import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/core/services/settings_services.dart';

class CounterHome extends GetView<SettingsServices> {
  const CounterHome({super.key});

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
            GetX<SettingsServices>(
              builder: (c) => Center(
                child: Text('${c.counter}'),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controller.increment();
                },
                child: const Text('Increment'),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controller.prefs.clear();
                },
                child: const Text('Clear'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
