import 'dart:async';
import 'package:activity_laboratory/tabbar/tab_bar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(const TopTabBar());
    });
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
            child: Image(
          image: AssetImage('images/logo.png'),
          height: 150,
          width: 150,
        )));
  }
}
