import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/login_screens/create_account_page.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double _TEXT_JAHMAIKA_SIZE;
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _setFontSizeAndStyle(shortestSide);
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/home_page_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new FittedBox(
                  child: new Text(
                    'JAHMAIKA',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: _TEXT_JAHMAIKA_SIZE,
                      fontFamily: 'sign_painter_house_script',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleTimeout() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (BuildContext context) => new MyHomePage()));
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  startTimeout() async {
    var duration = const Duration(seconds: 7);
    return new Timer(duration, handleTimeout);
  }

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _TEXT_JAHMAIKA_SIZE = 72.0;
    } else if (shortestSide >= 600) {
      _TEXT_JAHMAIKA_SIZE = 144.0;
    }
  }
}
