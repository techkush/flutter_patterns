import 'dart:async';

import 'package:flutterpatterns/models/user.dart';
import 'package:flutterpatterns/widgets/bloc_provider.dart';
import 'package:flutterpatterns/api/db_api.dart';

class UserBloc implements BlocBase{
  User _user;
  
  // Streams to handle the user
  StreamController<User> _userController = StreamController<User>.broadcast();
  Sink<User> get _inUser => _userController.sink;
  Stream<User> get outUser => _userController.stream;

  UserBloc(){
    init();
  }

  void init() async{
    _user = await api.getUser();
    _inUser.add(_user);
  }

  @override
  void dispose() {
    _userController.close();
  }

  void updateUser(User user){
    _user = user;
    _inUser.add(_user);
  }

  void updateName(String name){
    _user.name = name;
    _inUser.add(_user);
  }

}