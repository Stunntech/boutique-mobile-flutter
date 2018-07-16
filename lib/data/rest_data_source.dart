import 'package:flutter_jahmaika/models/user.dart';
import 'package:flutter_jahmaika/utils/network_util.dart';
import 'package:flutter_test/flutter_test.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL =
      'http://ec2-54-219-127-212.us-west-1.compute.amazonaws.com:8000/';
  static final LOGIN_URL = BASE_URL + 'api/v1/registration/';

  Future<dynamic> login(String firstName, String lastName, String emailId, String password) {
    return _netUtil.post(LOGIN_URL,
        body: {'email': emailId,
          'password': password,
      "first_name": firstName,
          "last_name": lastName}).then((dynamic res) {
      print(res.toString());
      if (res["error"]) throw new Exception(res["error_msg"]);
      //return new User.map(res["user"]);
      return res;
    });
  }
}
