import 'package:flutter/material.dart';
import 'package:smkpopprojectapp/main_home.dart';
import 'package:smkpopprojectapp/src/ui/view/my_view.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FANSIM',
      theme: ThemeData(
        fontFamily: 'Nunito',
        primarySwatch: Colors.amber,
      ),
      home: MainHome(),

    );
  }
}
