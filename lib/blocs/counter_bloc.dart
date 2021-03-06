import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpatterns/pages/stream_counter_page.dart';
import 'package:flutterpatterns/widgets/bloc_provider.dart';

class CounterBloc implements BlocBase {
  int _counter;

  // Streams to handle a counter
  final StreamController<int> _counterController = StreamController<int>();

  Sink<int> get _inAdd => _counterController.sink;

  Stream<int> get outCounter => _counterController.stream;

  // Streams to handle the increment of the counter/
  StreamController<int> _incrementController = StreamController<int>();

  Sink<int> get incrementCounter => _incrementController.sink;

  // ignore: non_constant_identifier_names
  CounterBloc() {
    _counter = 0;
    _incrementController.stream.listen(_increment);
    print('Counter Bloc');
  }

  @override
  void dispose() {
    _counterController.close();
    _incrementController.close();
  }

  void _increment(data) {
    _counter = _counter + 1;
    _inAdd.add(_counter);
  }

  void gotoPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => StreamCounterPage()));
  }
}
