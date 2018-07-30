import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/login_screens/signin/signin.dart';
import 'package:flutter_jahmaika/screens/login_screens/signup/signup.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  double _TEXT_JAHMAIKA_SIZE;
  double _TEXT_CREATE_ACCOUNT_SIZE;
  double _TEXT_LOGIN_SIZE;
  double _MARGIN_SMALL;
  double _MARGIN_MEDIUM;
  double _PADDING_SMALL;
  double _PADDING_LARGE;
  double _BUTTON_ELLIPTICAL_WIDTH;
  double _BUTTON_ELLIPTICAL_HEIGHT;

  TextStyle style72;
  TextStyle style19;
  TextStyle style15White;
  TextStyle style15Green;

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
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              child: new Container(
                alignment: Alignment.center,
                child: new Text(
                  'JAHMAIKA',
                  style: style72,
                ),
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(bottom: _MARGIN_SMALL),
                  child: new FlatButton(
                      child: new Container(
                        padding: new EdgeInsets.only(
                            left: _PADDING_LARGE,
                            right: _PADDING_LARGE,
                            top: _PADDING_SMALL,
                            bottom: _PADDING_SMALL),
                        decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: new BorderRadius.all(
                              new Radius.elliptical(_BUTTON_ELLIPTICAL_WIDTH,
                                  _BUTTON_ELLIPTICAL_HEIGHT)),
                          border: new Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: new Text(
                          'Create an account',
                          style: style19,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SignUpPage()),
                        );
                      }),
                ),
                new Container(
                  margin: new EdgeInsets.only(bottom: _MARGIN_MEDIUM),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        alignment: Alignment.center,
                        child: new Text(
                          'Already have an account?',
                          textAlign: TextAlign.center,
                          style: style15White,
                        ),
                      ),
                      new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new SignInPage()),
                          );
                        },
                        child: new Container(
                          margin: new EdgeInsets.only(left: _MARGIN_SMALL),
                          child: new Text('Login',
                              textAlign: TextAlign.center, style: style15Green),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _TEXT_JAHMAIKA_SIZE = 72.0;
      _TEXT_CREATE_ACCOUNT_SIZE = 19.0;
      _TEXT_LOGIN_SIZE = 15.0;
      _MARGIN_SMALL = 16.0;
      _MARGIN_MEDIUM = 32.0;
      _PADDING_SMALL = 16.0;
      _PADDING_LARGE = 48.0;
      _BUTTON_ELLIPTICAL_WIDTH = 40.0;
      _BUTTON_ELLIPTICAL_HEIGHT = 50.0;
    } else if (shortestSide >= 600) {
      _TEXT_JAHMAIKA_SIZE = 144.0;
      _TEXT_CREATE_ACCOUNT_SIZE = 34.0;
      _TEXT_LOGIN_SIZE = 26.0;
      _MARGIN_SMALL = 32.0;
      _MARGIN_MEDIUM = 64.0;
      _PADDING_SMALL = 32.0;
      _PADDING_LARGE = 96.0;
      _BUTTON_ELLIPTICAL_WIDTH = 40.0;
      _BUTTON_ELLIPTICAL_HEIGHT = 50.0;
    }

    style72 = new TextStyle(
      inherit: true,
      fontSize: _TEXT_JAHMAIKA_SIZE,
      color: Colors.white,
      fontFamily: 'sign_painter_house_script',
    );
    style19 = new TextStyle(
      inherit: true,
      color: Colors.white,
      fontSize: _TEXT_CREATE_ACCOUNT_SIZE,
      fontFamily: 'helvetica_neue',
    );
    style15White = new TextStyle(
      inherit: true,
      color: Colors.white,
      fontSize: _TEXT_LOGIN_SIZE,
      fontFamily: 'helvetica_neue',
    );
    style15Green = new TextStyle(
      inherit: true,
      color: Colors.green,
      fontSize: _TEXT_LOGIN_SIZE,
      fontFamily: 'helvetica_neue',
    );
  }
}
