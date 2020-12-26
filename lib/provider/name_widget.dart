import 'package:flutter/material.dart';
import 'package:flutterpatterns/provider/my_model.dart';
import 'package:provider/provider.dart';

class MyNameWidget extends StatelessWidget {
  MyNameWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context);
    return Column(
      children: <Widget>[
        Text('${myModel.name}'),
        RaisedButton(
          child: Text('Change Counter'),
          onPressed: (){
            myModel.changeCounter();
          },
        ),
        RaisedButton(
          child: Text('Next Page'),
          onPressed: (){
            myModel.goNextPage(context);
          },
        )
      ],
    );
  }
}
