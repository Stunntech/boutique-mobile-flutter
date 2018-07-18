import 'package:flutter_jahmaika/models/user.dart';
import 'package:flutter_jahmaika/utils/network_util.dart';
import 'package:flutter_test/flutter_test.dart';

class RestDataSource {
  static final BASE_URL =
      'http://ec2-54-219-127-212.us-west-1.compute.amazonaws.com:8000/';
  static final LOGIN_URL = BASE_URL + 'api/v1/registration/';
  static final ACCOUNT_ACTIVATION_URL = BASE_URL + 'api/v1/account-activation/';
  static final SIGN_IN_URL = BASE_URL + 'api/v1/login/';
  static final RESET_PASSWORD_URL = BASE_URL + 'api/v1/forgot-password/';
  static final RESET_PASSWORD_ACCOUNT_VERIFICATION_URL =
      BASE_URL + 'api/v1/forgot-password-change/';
  NetworkUtil _netUtil = new NetworkUtil();

  Future<dynamic> accountActivation(String otpToken, String token) {
    return _netUtil.post(ACCOUNT_ACTIVATION_URL, body: {
      'token': otpToken,
      'user_token': token,
    }).then((dynamic res) {
      //return new User.map(res["user"]);
      return res;
    });
  }

  Future<dynamic> login(
      String firstName, String lastName, String emailId, String password) {
    return _netUtil.post(LOGIN_URL, body: {
      'email': emailId,
      'password': password,
      "first_name": firstName,
      "last_name": lastName
    }).then((dynamic res) {
      //return new User.map(res["user"]);
      return res;
    });
  }

  Future<dynamic> signIn(String emailId, String password) {
    return _netUtil.post(SIGN_IN_URL, body: {
      'email': emailId,
      'password': password,
    }).then((dynamic res) {
      //return new User.map(res["user"]);
      return res;
    });
  }

  Future<dynamic> resetPassword(String emailId) {
    return _netUtil.post(RESET_PASSWORD_URL, body: {
      'email': emailId,
    }).then((dynamic res) {
      //return new User.map(res["user"]);
      return res;
    });
  }

  Future<dynamic> accountVerification(String otpTokenForAccountVerification) {
    return _netUtil.post(RESET_PASSWORD_ACCOUNT_VERIFICATION_URL, body: {
      'token': otpTokenForAccountVerification,
    }).then((dynamic res) {
      //return new User.map(res["user"]);
      return res;
    });
  }
}
