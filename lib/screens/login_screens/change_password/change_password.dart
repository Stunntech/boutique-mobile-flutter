import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/login_screens/change_password/change_password_screen_presenter.dart';
import 'package:flutter_jahmaika/screens/login_screens/signin/signin.dart';

class ChangePasswordPage extends StatefulWidget {
  String _token;
  ChangePasswordPage(this._token);

  ChangePasswordPageState createState() => ChangePasswordPageState(_token);
}

class ChangePasswordPageState extends State<ChangePasswordPage>
    implements ChangePasswordScreenContract {
  double _PADDING_SMALL;
  double _MARGIN_SMALL;
  double _MARGIN_MEDIUM;
  double _MARGIN_EXTRA_MEDIUM;
  double _MARGIN_LARGE;
  double _TEXT_SIZE_CHANGE_PASSWORD;
  double _TEXT_SIZE_RESET_PASSWORD;
  double _BUTTON_HEIGHT;
  double _BUTTON_WIDTH;
  String _tokenForChangePassword;
  String _changePassword;
  String _conformChangePassword;
  ChangePasswordScreenPresenter _presenter;
  final mChangePassword = new TextEditingController();
  final mConformChangePassword = new TextEditingController();

  ChangePasswordPageState(this._tokenForChangePassword) {
    _presenter = ChangePasswordScreenPresenter(this);
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
                padding: new EdgeInsets.all(3.0),
                child: new Image.asset(
                  "assets/images/back.png",
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.only(top: _MARGIN_SMALL),
              child: new Text(
                'Change password',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: _TEXT_SIZE_CHANGE_PASSWORD,
                  fontFamily: 'avenir_medium',
                ),
              ),
            ),
            new Container(
                margin: new EdgeInsets.only(top: _MARGIN_EXTRA_MEDIUM),
                child: new TextField(
                  controller: mChangePassword,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(_PADDING_SMALL),
                    hintText: 'Enter new password',
                    hintStyle: new TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'avenir',
                    ),
                  ),
                )),
            new Container(
                margin: new EdgeInsets.only(top: _MARGIN_MEDIUM),
                child: new TextField(
                  controller: mConformChangePassword,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    contentPadding: new EdgeInsets.all(_MARGIN_SMALL),
                    hintText: 'Re enter new password',
                    hintStyle: new TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'avenir',
                    ),
                  ),
                )),
            new Container(
              margin: new EdgeInsets.only(top: _MARGIN_LARGE),
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
                      'Reset Password',
                      style: new TextStyle(
                        color: Colors.black,
                        fontSize: _TEXT_SIZE_RESET_PASSWORD,
                        fontFamily: 'avenir_medium',
                      ),
                    ),
                  ),
                  onPressed: () async {
                    _changePassword = mChangePassword.text.toString();
                    _conformChangePassword =
                        mConformChangePassword.text.toString();
                    _presenter.accountChangePassword(_changePassword,
                        _conformChangePassword, _tokenForChangePassword);
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
    mChangePassword.dispose();
    mConformChangePassword.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
  }

  @override
  void onChangePasswordError(String errorTxt) {
    // TODO: implement onChangePasswordError
  }

  @override
  void onChangePasswordSuccess(res) {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SignInPage()),
    );
  }

  void _setFontSizeAndStyle(double shortestSide) {
    if (shortestSide < 600) {
      _PADDING_SMALL = 15.0;
      _MARGIN_SMALL = 15.0;
      _MARGIN_MEDIUM = 20.0;
      _MARGIN_EXTRA_MEDIUM = 30.0;
      _MARGIN_LARGE = 40.0;
      _TEXT_SIZE_CHANGE_PASSWORD = 30.0;
      _TEXT_SIZE_RESET_PASSWORD = 16.0;
      _BUTTON_HEIGHT = 50.0;
      _BUTTON_WIDTH = 300.0;
    } else if (shortestSide >= 600) {
      _PADDING_SMALL = 30.0;
      _MARGIN_SMALL = 30.0;
      _MARGIN_MEDIUM = 40.0;
      _MARGIN_EXTRA_MEDIUM = 60.0;
      _MARGIN_LARGE = 80.0;
      _TEXT_SIZE_CHANGE_PASSWORD = 60.0;
      _TEXT_SIZE_RESET_PASSWORD = 32.0;
      _BUTTON_HEIGHT = 100.0;
      _BUTTON_WIDTH = 600.0;
    }
  }
}
