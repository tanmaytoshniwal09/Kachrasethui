import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kachrasethui/provider/userprovider.dart';
import 'package:kachrasethui/screens/onboarding_screen.dart';
import 'package:kachrasethui/screens/signInScreen.dart';
import 'package:kachrasethui/screens/userInfoScreen.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
  // User? user = await FirebaseAuth.instance.currentUser;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(
          create: (_) => UserProvider(),
        )
      ],
      child: MaterialApp(
          title: 'FlutterFire Samples',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            brightness: Brightness.dark,
          ),
          home: OnboardingScreen()),
    );
  }
}
