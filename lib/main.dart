import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/core/app_bindings.dart';
import 'package:getx_flutter/domain/middleware/auth_middleware.dart';
import 'package:getx_flutter/domain/middleware/super_middleware.dart';
import 'package:getx_flutter/presentation/view/app_admin.dart';
import 'package:getx_flutter/presentation/view/app_home.dart';
import 'package:getx_flutter/presentation/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: AppBindings(),
      // home: const HomePage(),
      initialRoute: '/',
      getPages: [
        // GetPage(
        //   name: '/',
        //   page: () => const HomePage(),
        //   //binding: AppBindings(),
        // ),
        GetPage(
          name: '/',
          page: () => const Login(),
          middlewares: [
            AuthMiddleware(),
            SuperMiddleware(),
          ],
        ),
        GetPage(
          name: '/home',
          page: () => const AppHome(),
        ),
        GetPage(
          name: '/admin',
          page: () => const AppAdmin(),
        ),
      ],
    );
  }
}
