import 'package:flutter/material.dart';

class NotificationW extends StatefulWidget {
  const NotificationW({Key key}) : super(key: key);

  @override
  _NotificationState createState() => new _NotificationState();
}

class _NotificationState extends State<NotificationW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fourth Route"),
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