import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'signin.dart';

class ChangePasswordPage extends StatefulWidget {
  ChangePasswordPage(this.token);
  String token;

  ChangePasswordPageState createState() => ChangePasswordPageState(token);
}

class ChangePasswordPageState extends State<ChangePasswordPage> {
  ChangePasswordPageState(this.tokenChangePassword);
  String tokenChangePassword;
  final mChangePassword = new TextEditingController();
  final mConformChangePassword = new TextEditingController();

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    mChangePassword.dispose();
    mConformChangePassword.dispose();
    super.dispose();
  }

  static Future<Map> _accountChangePassword(
      String url, Map map, String tokenChangePassword) async {
    http.Response res = await http.post(
      url,
      body: map,
      headers: {HttpHeaders.AUTHORIZATION: 'JWT' + tokenChangePassword},
    );
    Map dataVerificationResponse = JSON.decode(res.body);
    return dataVerificationResponse;
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
                'Change password',
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
                  controller: mChangePassword,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(15.0),
                    hintText: 'Enter new password',
                    hintStyle: new TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'avenir',
                    ),
                  ),
                )),
            new Container(
                margin: new EdgeInsets.only(top: 20.0),
                child: new TextField(
                  controller: mConformChangePassword,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(15.0),
                    hintText: 'Re enter new password',
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
                        left: 55.0, right: 55.0, top: 15.0, bottom: 15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.all(
                          new Radius.elliptical(40.0, 50.0)),
                      border: new Border.all(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    child: new Text(
                      'Reset Password',
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'avenir_medium',
                      ),
                    ),
                  ),
                  onPressed: () async {
                    String url =
                        'http://ec2-54-219-127-212.us-west-1.compute.amazonaws.com:8000/api/v1/change-password/';
                    Map map = {
                      'new_password1': mChangePassword.text.toString(),
                      'new_password2': mConformChangePassword.text.toString(),
                    };
                    Map changePasswordResponse = await _accountChangePassword(
                        url, map, tokenChangePassword);
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SignInPage()),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
