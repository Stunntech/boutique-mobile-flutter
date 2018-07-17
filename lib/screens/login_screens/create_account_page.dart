import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/login_screens/signin/signin.dart';
import 'package:flutter_jahmaika/screens/login_screens/signup/signup.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextStyle style50 = new TextStyle(
      inherit: true,
      fontSize: 50.0,
      color: Colors.white,
    );
    TextStyle style19 = new TextStyle(
      inherit: true,
      color: Colors.white,
      fontSize: 19.0,
      fontFamily: 'helvetica_neue',
    );
    TextStyle style15White = new TextStyle(
      inherit: true,
      color: Colors.white,
      fontSize: 15.0,
      fontFamily: 'helvetica_neue',
    );
    TextStyle style15Green = new TextStyle(
      inherit: true,
      color: Colors.green,
      fontSize: 15.0,
      fontFamily: 'helvetica_neue',
    );
    return new Scaffold(
      body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/home_page_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(top: 160.0),
                  child: new Text(
                    'JAHMAIKA',
                    textAlign: TextAlign.center,
                    style: style50,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(top: 230.0),
                  child: new FlatButton(
                      child: new Container(
                        padding: new EdgeInsets.only(
                            left: 45.0, right: 45.0, top: 15.0, bottom: 15.0),
                        decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: new BorderRadius.all(
                              new Radius.elliptical(40.0, 50.0)),
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
                  margin: new EdgeInsets.only(top: 16.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
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
                          margin: new EdgeInsets.only(left: 16.0),
                          child: new Text('Login',
                              textAlign: TextAlign.center, style: style15Green),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
