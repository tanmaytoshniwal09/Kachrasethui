// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:kachrasethui/Constants/locations.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: [
          Container(
            height: mq.height,
            width: mq.width,
            color: Colors.white,
            child: Column(
              children: [
                // onboarding 3 screen
                Container(
                    height: mq.height * 0.7,
                    width: mq.width,
                    child: Lottie.asset(
                      AppImages.truck,
                    )),
                SizedBox(
                  height: mq.height * 0.03,
                ),
                Text(
                  'Get your waste collected',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.01,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum, quam id tincidunt condimentum, est lorem',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
  }
}
