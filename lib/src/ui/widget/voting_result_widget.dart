import 'package:flutter/material.dart';

class VotingResult extends StatefulWidget {
  const VotingResult({Key key}) : super(key: key);

  @override
  _VotingResultState createState() => new _VotingResultState();
}

class _VotingResultState extends State<VotingResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('gigigigi!'),
        ),
      ),
    );
  }
}