import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pocketplan/view/homescreen.dart';
import 'package:pocketplan/view/onboarding.dart';

void main() {
  runApp(PocketPlanApp());
}

class PocketPlanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => OnboardingScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        // Add other pages here
      ],
    );
  }
}
