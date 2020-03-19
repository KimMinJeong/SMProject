import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(

        child: Container(
          alignment: Alignment.center,
          height: 300,
          width: 300,
          child: Text(
            "MyView",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          color: Colors.amber,

        )
      )
    );
  }
}