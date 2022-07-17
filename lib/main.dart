import 'package:flutter/material.dart';
import 'package:login_screen/screen/welcome_screen/welcome_screen.dart';
import 'package:login_screen/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Primarycolor,
        scaffoldBackgroundColor: Bgcolor,
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      home: const WelcomeScreen(),
    );
  }
}
