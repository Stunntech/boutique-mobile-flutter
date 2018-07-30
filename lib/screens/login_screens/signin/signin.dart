import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/login_screens/signin/signin_screen_presenter.dart';

class SignInPage extends StatefulWidget {
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage>
    implements SignInScreenContract {
  final myEmailAddressController = new TextEditingController();
  final myPasswordController = new TextEditingController();
  String _emailId;
  String _password;
  SignInScreenPresenter _presenter;
  double _PADDING_SMALL;
  double _PADDING_EXTRA_SMALL;
  double _MARGIN_SMALL;
  double _MARGIN_MEDIUM;
  double _MARGIN_EXTRA_MEDIUM;
  double _MARGIN_LARGE;
  double _MARGIN_EXTRA_LARGE;
  double _TEXT_SIZE_SIGN_IN;
  double _TEXT_SIZE_FORGOT_PASSWORD;
  double _TEXT_SIZE_BUTTON_SIGN_IN;
  double _BUTTON_HEIGHT;
  double _BUTTON_WIDTH;

  SignInPageState() {
    _presenter = SignInScreenPresenter(this);
  }

  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    _setFontSizeAndStyle(shortestSide);
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        padding: new EdgeInsets.all(_PADDING_SMALL),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: new Container(
                margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
                padding: new EdgeInsets.all(_PADDING_EXTRA_SMALL),
                child: new Image.asset(
                  "assets/images/back.png",
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: _MARGIN_SMALL),
              child: new Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: _TEXT_SIZE_SIGN_IN,
                  fontFamily: 'avenir_medium',
                ),
              ),
            ),
            new Container(
                margin: new EdgeInsets.only(top: _MARGIN_LARGE),
                child: new TextField(
                  controller: myEmailAddressController,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(_PADDING_SMALL),
                    hintText: 'Email Address',
                    hintStyle: new TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'avenir',
                    ),
                  ),
                )),
            new Container(
                margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
                child: new TextField(
                  controller: myPasswordController,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(_PADDING_SMALL),
                    hintText: 'password',
                    hintStyle: new TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'avenir',
                    ),
                  ),
                )),
            new Container(
              margin: new EdgeInsets.only(top: _MARGIN_EXTRA_LARGE),
              alignment: Alignment.center,
              child: new FlatButton(
                  child: new Container(
                    alignment: Alignment.center,
                    height: _BUTTON_HEIGHT,
                    width: _BUTTON_WIDTH,
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
                        fontSize: _TEXT_SIZE_BUTTON_SIGN_IN,
                        fontFamily: 'avenir_medium',
                      ),
                    ),
                  ),
                  onPressed: () async {
                    _signIn();
                  }),
            ),
            new GestureDetector(
              onTap: () {
                _navigateToResendPasswordPage();
              },
              child: new Container(
                alignment: Alignment.center,
                margin: new EdgeInsets.only(top: _MARGIN_EXTRA_MEDIUM),
                child: new Text(
                  'Forgot your password?',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: _TEXT_SIZE_FORGOT_PASSWORD,
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

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myEmailAddressController.dispose();
    myPasswordController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
  }

  @override
  void onSignInError(String errorTxt) {
    // TODO: implement onSignInError
  }

  @override
  void onSignInSuccess(res) {
    Navigator.of(context).pushReplacementNamed('/genderSelectionPage');
  }

  void _navigateToResendPasswordPage() {
    Navigator.of(context).pushReplacementNamed('/resetPassword');
  }

  void _signIn() {
    _emailId = myEmailAddressController.text.toString();
    _password = myPasswordController.text.toString();
    _presenter.doSignIn(_emailId, _password);
  }

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _PADDING_SMALL = 15.0;
      _PADDING_EXTRA_SMALL = 3.0;
      _MARGIN_SMALL = 15.0;
      _MARGIN_EXTRA_MEDIUM = 25.0;
      _MARGIN_MEDIUM = 20.0;
      _MARGIN_LARGE = 30.0;
      _MARGIN_EXTRA_LARGE = 40.0;
      _TEXT_SIZE_SIGN_IN = 30.0;
      _TEXT_SIZE_FORGOT_PASSWORD = 15.0;
      _TEXT_SIZE_BUTTON_SIGN_IN = 16.0;
      _BUTTON_HEIGHT = 50.0;
      _BUTTON_WIDTH = 300.0;
    } else if (shortestSide >= 600) {
      _PADDING_SMALL = 30.0;
      _PADDING_EXTRA_SMALL = 6.0;
      _MARGIN_SMALL = 30.0;
      _MARGIN_MEDIUM = 40.0;
      _MARGIN_EXTRA_MEDIUM = 50.0;
      _MARGIN_LARGE = 60.0;
      _MARGIN_EXTRA_LARGE = 80.0;
      _TEXT_SIZE_SIGN_IN = 60.0;
      _TEXT_SIZE_FORGOT_PASSWORD = 30.0;
      _TEXT_SIZE_BUTTON_SIGN_IN = 32.0;
      _BUTTON_HEIGHT = 100.0;
      _BUTTON_WIDTH = 600.0;
    }
  }
}
