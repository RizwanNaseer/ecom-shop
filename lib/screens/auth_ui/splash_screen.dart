// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import '/utils/app_constants.dart';
import '../home_page.dart';
//import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome To My",
              style: TextStyle(
                  fontSize: 24,
                  color: AppConstants.textColor,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Ecommerce Application",
              style: TextStyle(
                  fontSize: 24,
                  color: AppConstants.textColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/cart.png",
              scale: 3,
            )
          ],
        ),
      ),
    );
  }
}
