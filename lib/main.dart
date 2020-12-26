
import 'package:flutter/material.dart';
import 'package:flutterpatterns/provider/parent_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: BlocProvider(child: BlocCounterPage(), bloc: CounterBloc()),
      //home: BlocProvider(child: BlocUserPage(), bloc: UserBloc()),
      home: MyParentWidget(),
    );
  }
}
