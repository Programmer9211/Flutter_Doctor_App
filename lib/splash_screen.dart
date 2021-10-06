import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:medical_app/const.dart';
import 'package:medical_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 20,
            child: Container(
              height: size.height / 6,
              width: size.height / 6,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: bubbleColor),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 20,
            child: Container(
              height: size.height / 7,
              width: size.height / 7,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: bubbleColor),
            ),
          ),
          Positioned(
            bottom: 200,
            left: 50,
            child: Container(
              height: size.height / 4.5,
              width: size.height / 4.5,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: bubbleColor,
              ),
            ),
          ),
          Positioned(
            top: 80,
            right: 0,
            child: Container(
              height: size.height / 5,
              width: size.height / 9,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  ),
                  color: bubbleColor),
            ),
          ),
          Positioned(
            top: 230,
            right: 30,
            child: Container(
              height: size.height / 10,
              width: size.height / 10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: bubbleColor,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: size.height / 5,
              width: size.height / 5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(130),
                  bottomRight: Radius.circular(80),
                ),
                color: bubbleColor,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 60,
            child: RichText(
              text: const TextSpan(
                  text: "Doctor",
                  style: TextStyle(
                    fontSize: 60,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "\nHelpline",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
