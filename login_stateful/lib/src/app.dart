import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Login',
      home: new Scaffold(body: LoginScreen()),
    );
  }
}
