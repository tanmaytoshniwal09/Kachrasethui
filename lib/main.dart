import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kachrasethui/provider/userprovider.dart';
import 'package:kachrasethui/screens/confirm_pickup_screen.dart';
import 'package:kachrasethui/screens/onboarding_screen.dart';
import 'package:kachrasethui/screens/pickup_screen.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
  // User? user = await FirebaseAuth.instance.currentUser;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserProvider>(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
          title: 'Kachara Seth',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            brightness: Brightness.dark,
          ),
          home: const ConfirmPickUpScreen()),
    );
  }
}
