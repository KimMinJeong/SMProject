import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:smkpopprojectapp/src/ui/view/hot_view.dart';
import 'package:smkpopprojectapp/src/ui/view/new_view.dart';

class ScaffoldWidget extends StatefulWidget {

  const ScaffoldWidget({Key key}) : super(key: key);
    _ScaffoldWidgetState createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {

  var _currentTabName = ['New', 'Hot'];

  var currentTab = [NewView(), HotView()];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);

    return Scaffold(
      body: currentTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.currentIndex,
        onTap: (index) {
          provider.currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text(_currentTabName[0]),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.cake),
            title: new Text(_currentTabName[1]),
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text(_currentTabName[2]),
          ),*/
        ],
      ),
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}