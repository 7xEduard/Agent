import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:agent/Screens/login_screen.dart';
import 'package:agent/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 12), () {
      Get.to(LoginScreen());
    });
    final size = MediaQuery.of(context).size;
    final radius = size.width / 2 + 35;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final angle = _controller.value * 2 * pi;
                final dx = cos(angle) * radius;
                final dy = sin(angle) * radius;
                return Transform.translate(
                  offset: Offset(dx, dy),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF08222),
                      ),
                    ),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final angle = _controller.value * 2 * pi + pi;
                final dx = cos(angle) * radius;
                final dy = sin(angle) * radius;
                return Transform.translate(
                  offset: Offset(dx, dy),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF015136),
                      ),
                    ),
                  ),
                );
              },
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/momknspace white.png",
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                  ),
                  CustomButton(
                    labelText: "ابـــــدأ",
                    onTap: () {
                      Navigator.pushNamed(context, 'Login');
                    },
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  const Text(
                    'powered by',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Image.asset(
                    "assets/images/momknspace green.png",
                    width: 70,
                    height: 45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
