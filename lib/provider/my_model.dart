import 'package:flutter/material.dart';
import 'package:flutterpatterns/provider/page_two.dart';

class MyModel extends ChangeNotifier{
  int _counter;

  int get counter => _counter;
  String _name;

  String get name => _name;

  MyModel(this._counter, this._name);

//  void changeCounter(){
//    _counter = 12;
//    notifyListeners();
//  }

  void changeName(){
    _name = 'Hello World';
    notifyListeners();
  }

  void goNextPage(BuildContext context){
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PageTwo()));
  }

  // we can use future also
  Future<void> changeCounter() async {
    await Future.delayed(Duration(seconds: 5));
    _counter = 12;
    notifyListeners();
  }

}
