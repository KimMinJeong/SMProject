import 'package:flutter/material.dart';

import 'package:smkpopprojectapp/src/utils/constants.dart';
import 'package:smkpopprojectapp/src/ui/view/hot_view.dart';
import 'package:smkpopprojectapp/src/ui/view/new_view.dart';
import 'package:smkpopprojectapp/src/ui/view/app_view.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key key}) : super(key: key);

  @override
  _MainHomeState createState() => new _MainHomeState();
}

int _currentIndex = 0;
var _currentTabName = ['New', 'Hot', 'MY'];
List<Widget> currentTab = [NewView(), HotView(), AppView()];

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildMatchAppbar(context),
        body: currentTab[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
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
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text(_currentTabName[2]),
            ),
          ],
        ),
    );
  }

  //*********** Settings Start ***************//
  Settings _selectedSetting = settings[0];

  void _selected(Settings setting) {
    // Causes the app to rebuild with the new _selectedSetting.
    setState(() {
      _selectedSetting = setting;
    });
  }
  //*********** Settings End ***************//

  Widget _buildMatchAppbar(context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(50.00), // here the desired height
        child: AppBar(
          title: new Text(_currentTabName[_currentIndex]),
          actions: <Widget>[
            // overflow menu
            PopupMenuButton<Settings>(
              icon: const Icon(Icons.dehaze),
              onSelected: _selected,
              itemBuilder: (BuildContext context) {
                return settings.skip(0).map((Settings setting) {
                  return PopupMenuItem<Settings>(
                    value: setting,
                    child: Text(setting.title),
                  );
                }).toList();
              },
            ),
          ],
      ),
    );
  }
}

