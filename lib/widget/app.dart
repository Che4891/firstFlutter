import 'package:flutter/material.dart';
import 'package:flutter_application_777/widget/user_profile.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: const UserProfile(),
    );
  }
}