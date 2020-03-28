import 'package:flutter/material.dart';
import 'package:smkpopprojectapp/src/ui/widget/voting_widget.dart';
import 'package:smkpopprojectapp/src/ui/widget/voting_result_widget.dart';
import 'package:smkpopprojectapp/src/ui/widget/notification_widget.dart';

import 'package:smkpopprojectapp/src/utils/constants.dart';
import 'package:smkpopprojectapp/src/ui/view/hot_view.dart';
import 'package:smkpopprojectapp/src/ui/view/new_view.dart';
import 'package:smkpopprojectapp/src/ui/view/app_view.dart';
import 'package:smkpopprojectapp/src/ui/widget/langauge_widget.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key key}) : super(key: key);

  @override
  _MainHomeState createState() => new _MainHomeState();
}


int _currentIndex = 0;
var _currentTabName = ['New', 'Hot', 'MY'];
List<Widget> currentTab = [NewView(), HotView(), AppView()];

class _MainHomeState extends State<MainHome> {

  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
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


  void _showLanguageModalSheet(){
    showModalBottomSheet(context: context, builder: (builder){
      return new Container(
        height: 460,
        color: Colors.grey[200],
        child: new Center(
          child: GridView.count(
            primary: true,
            scrollDirection: Axis.vertical, //스크롤 방향 조절
            crossAxisCount: 3,
            children: LanguageList(),
          ),
          /*itemCount: ytResult.length,
              itemBuilder:(_, int index) => ListItem(index)*/
        ),
      );
    });
  }

  //*********** Settings Start ***************//
  Settings _selectedSetting = settings[0];

  void _selected(Settings setting) {
    // Causes the app to rebuild with the new _selectedSetting.
    setState(() {
      _selectedSetting = setting;

      //언어선택
      if(_selectedSetting.key  == 1){
        _showLanguageModalSheet();
      }else if(_selectedSetting.key == 2){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Voting()),
        );
      }else if(_selectedSetting.key == 3){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VotingResult()),
        );
      }else if(_selectedSetting.key == 4){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationW()),
        );
      }
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

