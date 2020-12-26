import 'package:flutter/material.dart';
import 'package:flutterpatterns/provider/counter_widget.dart';
import 'package:flutterpatterns/provider/my_model.dart';
import 'package:flutterpatterns/provider/name_widget.dart';
import 'package:provider/provider.dart';

class MyParentWidget extends StatelessWidget {
  MyParentWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyModel(26, 'Namesh'),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(child: MyCounterWidget(),),
              Expanded(child: MyNameWidget(),)
            ],
          ),
        ),
      ),
    );
  }
}
