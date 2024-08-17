import 'package:get/get.dart';

class AppLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'home': 'الصفحة الرئيسية',
          'english': 'الانجليزية',
          'arabic': 'العربية',
        },
        'en': {
          'home': 'Home',
          'english': 'English',
          'arabic': 'Arabic',
        },
      };
}
