import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:padrinhomed/constant/app_theme.dart';
import 'package:padrinhomed/routes/routes.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Padrinhomed',
      theme: AppTheme.appStyle,
      themeMode: ThemeMode.light,
      initialRoute: '/',
      getPages: Routes.screens,

    );
  }
}




