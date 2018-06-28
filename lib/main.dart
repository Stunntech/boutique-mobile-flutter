import 'package:flutter/material.dart';
import 'signup.dart';
import 'signin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Jahmaika Boutique',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                    ),
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
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontFamily: 'helvetica_neue',
                          ),
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
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontFamily: 'helvetica_neue',
                          ),
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
                          child: new Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.green,
                              fontSize: 15.0,
                              fontFamily: 'helvetica_neue',
                            ),
                          ),
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
