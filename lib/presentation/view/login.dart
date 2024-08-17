import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    prefs!.setString('role', 'user');
                    Get.offNamed('/home');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    prefs!.setString('role', 'admin');
                    Get.offNamed('/admin');
                  },
                  child: const Text(
                    'Login Admin',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
