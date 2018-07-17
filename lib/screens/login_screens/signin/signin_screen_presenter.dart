import 'package:flutter_jahmaika/data/rest_data_source.dart';

abstract class SignInScreenContract {

  void onSignInError(String errorTxt);
  void onSignInSuccess(res);
}

class SignInScreenPresenter {
  SignInScreenContract _view;
  RestDataSource api = new RestDataSource();
  SignInScreenPresenter(this._view);

  doSignIn( String emailId, String password) {
    api.signIn( emailId, password).then((res) {
      _view.onSignInSuccess(res);
    }).catchError((Exception error) => _view.onSignInError(error.toString()));
  }
}
