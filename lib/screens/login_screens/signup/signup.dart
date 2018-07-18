import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/custom_views/CustomShowDialog.dart';
import 'package:flutter_jahmaika/screens/login_screens/signup/signup_screen_presenter.dart';

class SignUpPage extends StatefulWidget {
  SignUpPageState createState() => new SignUpPageState();
}

class SignUpPageState extends State<SignUpPage>
    implements SignUpScreenContract {
  String _password;
  String _firstName;
  String _lastName;
  String _emailId;
  String _token;
  String _status;
  String _otpToken;
  final myUserNameController = new TextEditingController();
  final myEmailAddressController = new TextEditingController();
  final myPasswordController = new TextEditingController();
  final mVerificationCodeController = new TextEditingController();
  SignUpScreenPresenter _presenter;

  SignUpPageState() {
    _presenter = new SignUpScreenPresenter(this);
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
                'Create new account',
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
                  controller: myUserNameController,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(15.0),
                    hintText: 'Name',
                    hintStyle: new TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'avenir',
                    ),
                  ),
                )),
            new Container(
                margin: new EdgeInsets.only(top: 20.0),
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
                    hintText: 'Password',
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
                      'Sign Up',
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontFamily: 'avenir_medium',
                      ),
                    ),
                  ),
                  onPressed: () async {
                    _signUp();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myUserNameController.dispose();
    myEmailAddressController.dispose();
    myPasswordController.dispose();
    mVerificationCodeController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
  }

  @override
  void onAccountActivationError(String errorTxt) {
    // TODO: implement onAccountActivationError
  }

  @override
  void onAccountActivationSuccess(res) {
    _status = res['msg'];
    if (_status.contains('account activated')) {
      Navigator.of(context).pushReplacementNamed("/signIn");
    }
  }

  @override
  void onLoginError(String errorTxt) {
    // TODO: implement onLoginError
  }

  @override
  void onLoginSuccess(res) {
    _token = res['token'];
    _status = res['msg'];
    if (_status.contains('Success')) {
      _showAlert();
    }
  }

  void _accountActivation() {
    _otpToken = mVerificationCodeController.text.toString();
    _presenter.doAccountActivation(_otpToken, _token);
  }

  void _showAlert() {
    CustomAlertDialog dialog = new CustomAlertDialog(
      content: new Container(
        width: 280.0,
        height: 280.0,
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
        ),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new Text(
                'Enter the verification code. A verification code is send to your registered email address. ',
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
                controller: mVerificationCodeController,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  contentPadding: new EdgeInsets.all(15.0),
                  hintText: 'Enter verification code',
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
                    _accountActivation();
                  }),
            ),
          ],
        ),
      ),
    );

    showDialog(context: context, child: dialog);
  }

  void _signUp() {
    _firstName = myUserNameController.text.toString();
    _lastName = '';
    _emailId = myEmailAddressController.text.toString();
    _password = myPasswordController.text.toString();
    _presenter.doLogin(_firstName, _lastName, _emailId, _password);
  }
}
