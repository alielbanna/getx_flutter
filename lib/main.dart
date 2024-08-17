import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/core/app_bindings.dart';
import 'package:getx_flutter/core/locale/locale.dart';
import 'package:getx_flutter/core/locale/locale_controller.dart';
import 'package:getx_flutter/core/services/settings_services.dart';
import 'package:getx_flutter/presentation/routes/middleware/auth_middleware.dart';
import 'package:getx_flutter/presentation/routes/middleware/super_middleware.dart';
import 'package:getx_flutter/presentation/view/app_admin.dart';
import 'package:getx_flutter/presentation/view/app_home.dart';
import 'package:getx_flutter/presentation/view/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

Future initialServices() async {
  await Get.putAsync(() => SettingsServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocaleController localeController = Get.put(AppLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: AppBindings(),
      locale: localeController.initLocale,
      translations: AppLocale(),
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
