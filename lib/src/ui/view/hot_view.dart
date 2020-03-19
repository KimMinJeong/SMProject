import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotView extends StatelessWidget {
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
                "HotView",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              color: Colors.amber,
            )
        )
    );
  }
}