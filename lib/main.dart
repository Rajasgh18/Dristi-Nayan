import 'package:dristi_nayan/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss_defaults/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Dristi Nayan",
        theme: ThemeData(
            primaryColor: Colors.amber,
            scaffoldBackgroundColor: TailwindColors.coolGray.shade100),
        home: const SplashScreen());
  }
}
