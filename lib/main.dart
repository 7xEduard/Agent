import 'package:agent/Screens/login_screen.dart';
import 'package:agent/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Agent());
}

class Agent extends StatelessWidget {
  const Agent({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     routes: {
      'Splash': (context) => const SplashScreen(),
      'Login': (context) =>  LoginScreen(),
     },
      debugShowCheckedModeBanner: false,
      initialRoute: 'Splash',
    );
  }
}


