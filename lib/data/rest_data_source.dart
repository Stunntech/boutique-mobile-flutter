import 'package:flutter_jahmaika/models/user.dart';
import 'package:flutter_jahmaika/utils/network_util.dart';
import 'package:flutter_test/flutter_test.dart';

class RestDataSource {
  static final BASE_URL =
      'http://ec2-54-219-127-212.us-west-1.compute.amazonaws.com:8000/';
  static final LOGIN_URL = BASE_URL + 'api/v1/registration/';
  static final ACCOUNT_ACTIVATION_URL = BASE_URL + 'api/v1/account-activation/';
  static final SIGN_IN_URL = BASE_URL + 'api/v1/login/';
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
}
