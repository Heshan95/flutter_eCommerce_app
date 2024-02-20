import 'package:ecommerce_application_2024/features/authentication/screens/onboarding/onboading.dart';
import 'package:ecommerce_application_2024/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoadingScreen(),
    );
  }
}