import 'package:flutter_jahmaika/data/rest_data_source.dart';
import 'package:flutter_jahmaika/models/user.dart';

abstract class SignUpScreenContract {
  void onAccountActivationError(String errorTxt);
  void onAccountActivationSuccess(res);
  void onLoginError(String errorTxt);
  void onLoginSuccess(res);
}

class SignUpScreenPresenter {
  SignUpScreenContract _view;
  RestDataSource api = new RestDataSource();
  SignUpScreenPresenter(this._view);

  doAccountActivation(String otpToken, String token) {
    api.accountActivation(otpToken, token).then((res) {
      _view.onAccountActivationSuccess(res);
    }).catchError(
        (Exception error) => _view.onAccountActivationError(error.toString()));
  }

  doLogin(String firstName, String lastName, String emailId, String password) {
    api.login(firstName, lastName, emailId, password).then((res) {
      _view.onLoginSuccess(res);
    }).catchError((Exception error) => _view.onLoginError(error.toString()));
  }
}
