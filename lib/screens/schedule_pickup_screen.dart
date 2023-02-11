// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kachrasethui/Constants/colors.dart';
import 'package:kachrasethui/Constants/constants.dart';
import 'package:kachrasethui/widget/bottom_bavigation_bar.dart';
import 'package:kachrasethui/widget/drawer.dart';

class SchedulePickUpScreen extends StatefulWidget {
  const SchedulePickUpScreen({super.key});

  @override
  State<SchedulePickUpScreen> createState() => _SchedulePickUpScreenState();
}

class _SchedulePickUpScreenState extends State<SchedulePickUpScreen> {
  List<Widget> pickUpDates = [
    Container(
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          Text(
            intToWeekDay[DateTime.now().weekday]!.substring(0, 3),
            style: TextStyle(
              // fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
    Container(
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          Text(
            intToWeekDay[(DateTime.now().weekday % 7 + 1)]!.substring(0, 3),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            DateTime.now().day.toString(),
            style: TextStyle(
              // fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: MyBottomNavigationBar(
          currentIndex: 1,
          mediaquery: mq,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 1,
          // highlightElevation: 5,
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(
            Icons.calendar_month_outlined,
            color: green,
          ),
        ),

        body: SizedBox(
          height: mq.height,
          //  color:  Colors.white,
          width: mq.width,

          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: mq.height * 0.2,
                    width: mq.width,
                    color: green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Schedule a Pick Up",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Schedule a pick up at your time!",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          "assets/dustbin_schedule_page.png",
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 80,
                        width: mq.width,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) => Card(
                            elevation: 5,
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    intToWeekDay[
                                            (DateTime.now().weekday + index) %
                                                    7 +
                                                1]!
                                        .substring(0, 3),
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    (((DateTime.now().day + index)) % 30)
                                        .toString(),
                                    style: TextStyle(
                                      // fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        //floatingActionButton: FloatingActionButton(onPressed: (){},),
      ),
    );
  }
}
