
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutterpatterns/provider/my_model.dart';

class MyCounterWidget extends StatelessWidget {
  MyCounterWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context);
    return Column(
      children: <Widget>[
        Text('${myModel.counter.toString()}'),
        RaisedButton(
          child: Text('Change name'),
          onPressed: (){
            myModel.changeName();
          },
        )
      ],
    );
  }
}
