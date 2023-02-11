import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:kachrasethui/provider/userprovider.dart';
import 'package:kachrasethui/screens/userInfoScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPickUpScreen extends StatelessWidget {
  AddPickUpScreen({super.key});
  TextEditingController address = TextEditingController();
  //get token from sharedpref

  @override
  Widget build(BuildContext context) {
    // final auth = FirebaseAuth.instance();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add PickUp'),
      ),
      body: Column(
        children: [
          //textformfields for name, address, phone number, email, pickup date, pickup time, pickup type, pickup quantity
          Text('Address: '),
          TextFormField(
            controller: address,
          ),
          // Text('Address: '),
          // TextFormField(),
          // Text('Address: '),
          // TextFormField(),
          // Text('Address: '),
          // TextFormField(),
          ElevatedButton(
              onPressed: () async {
                print(address.text.toString());
                await UserProvider.postpickup(address.text.toString())
                    .whenComplete(
                        () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UserInfoScreen(
                                  user: FirebaseAuth.instance.currentUser!,
                                ))));
              },
              child: Text('Add Pickup')),
        ],
      ),
    );
  }
}
