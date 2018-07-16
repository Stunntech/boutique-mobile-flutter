import 'package:flutter_jahmaika/data/rest_data_source.dart';
import 'package:flutter_jahmaika/models/user.dart';

abstract class SignUpScreenContract {
  void onLoginSuccess(res);
  void onLoginError(String errorTxt);
}

class SignUpScreenPresenter {
  SignUpScreenContract _view;
  RestDatasource api = new RestDatasource();
  SignUpScreenPresenter(this._view);

  doLogin(String firstName, String lastName, String emailId, String password) {
    api.login(firstName, lastName, emailId, password).then((res) {
      _view.onLoginSuccess(res);
    }).catchError((Exception error) => _view.onLoginError(error.toString()));
  }
}
