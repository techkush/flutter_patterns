import 'package:flutterpatterns/models/user.dart';

class DbApi {
  Future<User> getUser() async {
    await Future.delayed(Duration(seconds: 5));
    User _user = User(name: 'Namesh Kushantha', age: 12, height: 140.0);
    return _user;
  }
}

DbApi api = DbApi();
