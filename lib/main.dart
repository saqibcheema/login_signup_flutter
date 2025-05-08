import 'package:flutter/material.dart';
import 'package:untitled1/signup.dart';
import 'package:untitled1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          ScreenTwo.id: (context) => ScreenTwo(),
        }
    );

  }
}
