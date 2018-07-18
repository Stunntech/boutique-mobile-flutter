import 'package:flutter/material.dart';
import 'package:flutter_jahmaika/screens/login_screens/change_password/change_password_screen_presenter.dart';
import 'package:flutter_jahmaika/screens/login_screens/signin/signin.dart';

class ChangePasswordPage extends StatefulWidget {
  ChangePasswordPage(this._token);
  String _token;

  ChangePasswordPageState createState() => ChangePasswordPageState(_token);
}

class ChangePasswordPageState extends State<ChangePasswordPage>
    implements ChangePasswordScreenContract {
  String _tokenForChangePassword;
  String _changePassword;
  String _conformChangePassword;
  ChangePasswordScreenPresenter _presenter;
  final mChangePassword = new TextEditingController();
  final mConformChangePassword = new TextEditingController();

  ChangePasswordPageState(this._tokenForChangePassword) {
    _presenter = ChangePasswordScreenPresenter(this);
  }
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
}
