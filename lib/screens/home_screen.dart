// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:kachrasethui/Constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // shape:Rec ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 0,
        toolbarHeight: mq.height * 0.15,
        backgroundColor: green,

        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Hello, Harsh',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Welcome to Kachraseth',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Icon(
                    Icons.person_2_outlined,
                    size: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
        leadingWidth: mq.width,
        excludeHeaderSemantics: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Column(
              children: [
                Container  (
                  width: mq.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Compost",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(
                            Icons.delete_forever_outlined,
                            size: 50,
                          )),
                      Text(
                        "Setup the compost with our experts",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          // fontSize: 20,

                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Container(
                  // height: mq.height * 0.25,
                  width: mq.width * 0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Compost",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(
                            Icons.delete_forever_outlined,
                            size: 50,
                          )),
                      Text(
                        "Setup the compost with our experts",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          // fontSize: 20,

                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                Container(
                  // height: mq.height * 0.25,
                  width: mq.width * 0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: green),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        "Compost",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(
                            Icons.delete_forever_outlined,
                            size: 50,
                          )),
                      Text(
                        "Setup the compost with our experts",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          // fontSize: 20,

                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      //floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
  }
}
