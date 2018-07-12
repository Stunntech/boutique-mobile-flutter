import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/login_screens/create_account_page.dart';
import 'package:flutter_jahmaika/main.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  void handleTimeout() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => new MyHomePage()));
  }

  startTimeout() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, handleTimeout);
  }

  AnimationController _iconAnimationController;
  CurvedAnimation _iconAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /* _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 2000));

    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeIn);
    _iconAnimation.addListener(() => this.setState(() {}));

    _iconAnimationController.forward();*/

    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Scaffold(
        body: new Container(
          /* width: _iconAnimation.value * 100,
          height: _iconAnimation.value * 100,*/
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/home_page_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          /* child: Center(
            child: new Container(
              child: new Text(
                'JAHIMAKA',
                style: new TextStyle(
                  color: Colors.white,
                  fontFamily: 'signPainter_houseScript',
                ),
              ),
            ),
          ),*/
        ),
      ),
    );
  }
}
