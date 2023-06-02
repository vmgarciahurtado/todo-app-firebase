import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:todo_app/infrastructure/api/firebase_api.dart';
import 'package:todo_app/presentation/shared/theme/primary_theme.dart';
import 'package:todo_app/presentation/splash/view/view.dart';

void main() async {
  Api.configureDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: PrimaryTheme.theme,
      home: SplashPage(),
    );
  }
}
