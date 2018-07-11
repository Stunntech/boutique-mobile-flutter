import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/login_screens/signup.dart';
import 'package:flutter_jahmaika/login_screens/signin.dart';
import 'package:flutter_jahmaika/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Jahmaika Boutique',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
