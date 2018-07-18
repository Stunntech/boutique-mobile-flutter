import 'package:flutter_jahmaika/data/rest_data_source.dart';

abstract class ChangePasswordScreenContract {
  void onChangePasswordError(String errorTxt);
  void onChangePasswordSuccess(res);
}

class ChangePasswordScreenPresenter {
  ChangePasswordScreenContract _view;
  RestDataSource api = new RestDataSource();
  ChangePasswordScreenPresenter(this._view);

  accountChangePassword(String changePassword, String conformChangePassword,
      String tokenForChangePassword) {
    api
        .changePassword(
            changePassword, conformChangePassword, tokenForChangePassword)
        .then((res) {
      _view.onChangePasswordSuccess(res);
    }).catchError(
            (Exception error) => _view.onChangePasswordError(error.toString()));
  }
}
