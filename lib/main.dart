import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'constants/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pertanian',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.secondary,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
