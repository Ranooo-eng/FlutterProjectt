import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ujicoba/routes.dart';
import 'pages/kalkulator_page.dart';
import 'pages/registration_page.dart';
import 'pages/confirm_regristaion_page.dart';
import 'pages/listmakanan_page.dart';
import 'pages/mainmenu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.mainMenu,
      getPages: Routes.MyPages,
    );
  }
}