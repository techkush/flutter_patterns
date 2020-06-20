
import 'package:flutter/material.dart';
import 'package:flutterpatterns/blocs/user_bloc.dart';
import 'package:flutterpatterns/pages/bloc_counter_page.dart';
import 'package:flutterpatterns/pages/bloc_user_page.dart';
import 'package:flutterpatterns/widgets/bloc_provider.dart';

import 'blocs/counter_bloc.dart';

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
      home: BlocProvider(child: BlocUserPage(), bloc: UserBloc()),
    );
  }
}

