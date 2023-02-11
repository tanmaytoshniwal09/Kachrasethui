import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kachrasethui/models/signIn.dart';
import 'package:kachrasethui/provider/userprovider.dart';
import 'package:kachrasethui/screens/signInScreen.dart';
import 'package:provider/provider.dart';

import 'addPickupScreen.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  late User _user;
  bool _isSigningOut = false;

  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  void initState() {
    _user = widget._user;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<UserProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        title: Text('Home'),
      ),
      body: FutureBuilder(
        future: prov.getPickupDetails(),
        builder: (context, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? Center(child: CircularProgressIndicator())
                : prov.pickUpData.length == 0
                    ? Center(child: Text('No data'))
                    : ListView.builder(
                        itemCount: prov.pickUpData.length,
                        itemBuilder: (context, index) => Card(
                          child: ListTile(
                            title: Text(prov.pickUpData[index].createdAt),
                            subtitle: Text(prov.pickUpData[index].updatedAt),
                          ),
                        ),
                      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // navigate to a new screen called AddPickUpScreen
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddPickUpScreen();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
