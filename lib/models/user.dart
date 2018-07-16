class User {
  String _password;
  String _firstName;
  String _lastName;
  String _emailId;

  User(this._firstName, this._lastName, this._emailId, this._password);

  User.map(dynamic obj) {
    // this._username = obj["username"];
    // this._password = obj["password"];
  }

  /* String get username => _username;
  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _password;

    return map;
  }*/
}
