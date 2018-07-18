import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/login_screens/change_password.dart';
import 'package:flutter_jahmaika/screens/login_screens/reset_password/reset_password_screen_presenter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPageState createState() => ResetPasswordPageState();
}

class ResetPasswordPageState extends State<ResetPasswordPage>
    implements ReSetPasswordScreenContract {
  String _emailId;
  String _status;
  String _token;
  String _otpTokenForAccountVerification;
  ReSetPasswordScreenPresenter _presenter;
  final myEmailAddressController = new TextEditingController();
  final mPasswordResetCodeController = new TextEditingController();

  ResetPasswordPageState() {
    _presenter = ReSetPasswordScreenPresenter(this);
  }

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myEmailAddressController.dispose();
    super.dispose();
  }

  void _showAlert() {
    AlertDialog dialog = new AlertDialog(
      content: new Container(
        width: 290.0,
        height: 290.0,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Text(
                'Enter the password reset code. A password reset  code is send to your registered email address. ',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontFamily: 'avenir',
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: 15.0),
              child: new TextField(
                textAlign: TextAlign.center,
                controller: mPasswordResetCodeController,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  contentPadding: new EdgeInsets.all(15.0),
                  hintText: 'Enter password reset code',
                  hintStyle: new TextStyle(
                    color: Colors.grey.shade500,
                    fontFamily: 'avenir',
                  ),
                ),
              ),
            ),
            new Container(
              alignment: Alignment.centerRight,
              margin: new EdgeInsets.only(top: 15.0),
              child: new Text(
                'Resend Code',
                textAlign: TextAlign.right,
                style: new TextStyle(
                  color: Colors.blue,
                  fontSize: 15.0,
                  fontFamily: 'avenir',
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: 40.0),
              alignment: Alignment.center,
              child: new FlatButton(
                  child: new Container(
                    padding: new EdgeInsets.only(
                        left: 65.0, right: 65.0, top: 15.0, bottom: 15.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.green,
                      /*  borderRadius: new BorderRadius.all(
                          new Radius.elliptical(40.0, 50.0)),
                      border: new Border.all(
                        color: Colors.grey.shade800,
                      ),*/
                    ),
                    child: new Text(
                      'Submit',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'avenir_medium',
                      ),
                    ),
                  ),
                  onPressed: () async {
                    _otpTokenForAccountVerification =
                        mPasswordResetCodeController.text.toString();

                    _presenter.accountVerificationForResetPassword(
                        _otpTokenForAccountVerification);
                  }),
            ),
          ],
        ),
      ),
    );

    showDialog(context: context, child: dialog);
  }

  static Future<Map> _accountActivation(String url, Map map) async {
    http.Response res = await http.post(url, body: map); // post api call
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
                'Reset password',
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
                      'Reset your password',
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'avenir_medium',
                      ),
                    ),
                  ),
                  onPressed: () async {
                    _emailId = myEmailAddressController.text.toString();
                    _presenter.doResetPassword(_emailId);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onResetPasswordError(String errorTxt) {
    // TODO: implement onResetPasswordError
  }

  @override
  void onResetPasswordSuccess(res) {
    _status = res['msg'];
    if (_status.contains('Success')) {
      _showAlert();
    }
  }

  @override
  void onAccountVerificationError(String errorTxt) {
    // TODO: implement onAccountVerificationError
  }

  @override
  void onAccountVerificationSuccess(res) {
    _status = res['msg'];
    _token = res['token'];
    if (_status.contains('valid account')) {
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new ChangePasswordPage(_token)),
      );
    }
  }
}
