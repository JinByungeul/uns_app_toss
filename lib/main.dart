import 'package:flutter/material.dart';
import 'package:uns_app_toss/common/common.dart';

import 'uns_app.dart';
import 'common/data/preference/app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ko')],
      fallbackLocale: const Locale('en'),
      path: translationsPath,
      useOnlyLangCode: true,
      child: const UNSApp()));
}
