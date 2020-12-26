import 'package:flutter/material.dart';
import 'package:flutterpatterns/blocs/user_bloc.dart';
import 'package:flutterpatterns/models/user.dart';
import 'package:flutterpatterns/widgets/bloc_provider.dart';

class BlocUserPage extends StatefulWidget {
  @override
  _BlocUserPageState createState() => _BlocUserPageState();
}

class _BlocUserPageState extends State<BlocUserPage> {
  String _newName;

  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("BLoC Pattern"),
      ),
      body: StreamBuilder<User>(
          stream: userBloc.outUser,
          //initialData: User.empty(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${snapshot.data.name}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  TextField(
                    onChanged: (value) => _newName = value,
                    decoration: InputDecoration(labelText: snapshot.data.name),
                  ),
                  RaisedButton(
                    child: Text('Go to Streams Page'),
                    onPressed: () {
                      //counterBloc.gotoPage(context);
                    },
                  )
                ],
              ));
            }else{
              return Center(child: CircularProgressIndicator());
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userBloc.updateName(_newName);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
