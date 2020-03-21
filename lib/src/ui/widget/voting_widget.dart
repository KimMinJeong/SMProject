import 'package:flutter/material.dart';

class Voting extends StatefulWidget {
  const Voting({Key key}) : super(key: key);

  @override
  _VotingState createState() => new _VotingState();
}

class _VotingState extends State<Voting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}