import 'package:flutter_jahmaika/data/rest_data_source.dart';

abstract class ReSetPasswordScreenContract {
  void onAccountVerificationError(String errorTxt);

  void onAccountVerificationSuccess(res);

  void onResetPasswordError(String errorTxt);

  void onResetPasswordSuccess(res);
}

class ReSetPasswordScreenPresenter {
  ReSetPasswordScreenContract _view;
  RestDataSource api = new RestDataSource();

  ReSetPasswordScreenPresenter(this._view);

  doAccountActivation(String otpToken, String token) {
    api.accountActivation(otpToken, token).then((res) {
      _view.onAccountVerificationSuccess(res);
    }).catchError((Exception error) =>
        _view.onAccountVerificationError(error.toString()));
  }

  doResetPassword(String emailId) {
    api.resetPassword(emailId).then((res) {
      _view.onResetPasswordSuccess(res);
    }).catchError(
        (Exception error) => _view.onResetPasswordError(error.toString()));
  }

  accountVerificationForResetPassword(String otpTokenForAccountVerification) {
    api.accountVerification(otpTokenForAccountVerification).then((res) {
      _view.onAccountVerificationSuccess(res);
    }).catchError((Exception error) =>
        _view.onAccountVerificationError(error.toString()));
  }
}
