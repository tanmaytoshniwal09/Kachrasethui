// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:kachrasethui/Constants/colors.dart';
import 'package:kachrasethui/screens/schedule_pickup_screen.dart';
import 'package:kachrasethui/widget/bottom_bavigation_bar.dart';
import 'package:kachrasethui/widget/drawer.dart';
import 'package:kachrasethui/widget/next_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            tooltip: 'Notification',
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 20,
            )),
        title: Row(
          children: [
            Spacer(),
            Icon(
              Icons.location_city,
              color: green,
            ),
            Text(
              "Bhopal, India",
              style: TextStyle(
                fontSize: 15,
                color: green,
              ),
            ),
            Spacer(),
          ],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: 0,
        mediaquery: mq,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 1,
        // highlightElevation: 5,
        backgroundColor: Colors.white,
        onPressed: () {
          nextScreenCloseOthers(context, SchedulePickUpScreen());
        },
        child: Icon(
          Icons.calendar_month_outlined,
          color: Colors.grey,
        ),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    height: mq.height * 0.2,
                    viewportFraction: 0.99,
                    autoPlay: true),
                items: [
                  SizedBox(
                    height: mq.height * 0.2,
                    width: mq.width,
                    child: Image.network(
                      'https://picsum.photos/200',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: mq.height * 0.2,
                    width: mq.width,
                    child: Image.network(
                      'https://picsum.photos/200',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: mq.height * 0.2,
                    width: mq.width,
                    child: Image.network(
                      'https://picsum.photos/200',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Harsh!',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    children: [
                      Text(
                        'Welcome to ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Kachraseth',
                        style: TextStyle(
                            fontSize: 20,
                            color: green,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  nextScreen(context, SchedulePickUpScreen());
                },
                child: Container(
                  height: mq.height * 0.2,
                  width: mq.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/home_page_request_truck.png",
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "  Request Pick-up",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: mq.width * 0.3,
                            child: Text(
                              "Request trash pick up and earn money and rewards at your doorstep",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "More Services",
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                "Our exclusive services for your benefits",
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      // nextScreen(context, SchedulePickUpScreen());
                    },
                    child: Container(
                      height: mq.height * 0.2,
                      width: mq.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Row(
                        children: [
                          // Image.asset(
                          //   "assets/home_page_request_truck.png",
                          // ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "  Request Pick-up",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: mq.width * 0.3,
                                child: Text(
                                  "Request trash pick up and earn money and rewards at your doorstep",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // nextScreen(context, SchedulePickUpScreen());
                    },
                    child: Container(
                      height: mq.height * 0.2,
                      width: mq.width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Column(
                        children: [
                          Text(
                            "Composting",
                            style: TextStyle(
                              fontSize: 20,
                              color: green,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 80,
                                child: Image.asset(
                                  "assets/home_page_request_truck.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                width: mq.width * 0.15,
                                child: Text(
                                  "Take pictures of the garbage issue you see on public places and earn rewards",
                                  // textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
  }
}
