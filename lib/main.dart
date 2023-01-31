import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phone_verification/screens/entry_page.dart';
import 'package:phone_verification/screens/home.dart';
import 'package:phone_verification/screens/phone.dart';
import 'package:phone_verification/screens/verify.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Phone(),
      home: Entry(),
      routes: {
        '/phone': (context) => const Phone(),
        '/home': (context) => const Home(),
        '/verify': (context) => const Verify()
      },
    );
  }
}
