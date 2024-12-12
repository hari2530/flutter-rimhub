import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => SignupPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
