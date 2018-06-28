import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'reset_password.dart';
import 'package:http/http.dart' as http;
import 'gender_selection.dart';

class SignInPage extends StatefulWidget {
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  final myEmailAddressController = new TextEditingController();
  final myPasswordController = new TextEditingController();

  String url =
      'http://ec2-54-219-127-212.us-west-1.compute.amazonaws.com:8000/api/v1/login/';

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myEmailAddressController.dispose();
    myPasswordController.dispose();
    super.dispose();
  }

  static Future<Map> signIn(String url, Map map) async {
    http.Response res = await http.post(url, body: map); // post api call
    Map data = JSON.decode(res.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: new Container(
                margin: new EdgeInsets.only(top: 20.0),
                padding: new EdgeInsets.all(3.0),
                child: new Image.asset(
                  "assets/images/back.png",
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: 15.0),
              child: new Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontFamily: 'avenir_medium',
                ),
              ),
            ),
            new Container(
                margin: new EdgeInsets.only(top: 30.0),
                child: new TextField(
                  controller: myEmailAddressController,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(15.0),
                    hintText: 'Email Address',
                    hintStyle: new TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'avenir',
                    ),
                  ),
                )),
            new Container(
                margin: new EdgeInsets.only(top: 20.0),
                child: new TextField(
                  controller: myPasswordController,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(15.0),
                    hintText: 'password',
                    hintStyle: new TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'avenir',
                    ),
                  ),
                )),
            new Container(
              margin: new EdgeInsets.only(top: 40.0),
              alignment: Alignment.center,
              child: new FlatButton(
                  child: new Container(
                    padding: new EdgeInsets.only(
                        left: 95.0, right: 95.0, top: 15.0, bottom: 15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(
                          new Radius.elliptical(40.0, 50.0)),
                      border: new Border.all(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    child: new Text(
                      'Sign In',
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'avenir_medium',
                      ),
                    ),
                  ),
                  onPressed: () async {
                    Map signInMap = {
                      'email': myEmailAddressController.text.toString(),
                      'password': myPasswordController.text.toString(),
                    };
                    Map signInResponse = await signIn(url, signInMap);
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new GenderSelectionPage()),
                    );
                  }),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new ResetPasswordPage()),
                );
              },
              child: new Container(
                alignment: Alignment.center,
                margin: new EdgeInsets.only(top: 25.0),
                child: new Text(
                  'Forgot your password?',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: 'avenir_medium',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
