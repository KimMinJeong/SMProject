/*
import 'package:flutter/material.dart';
import 'package:smkpopprojectapp/src/utils/constants.dart';

class TopAppBar extends StatefulWidget {
  @override
  _TopAppBarState createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  Settings _selectedSetting = settings[0];

  void _selected(Settings setting) {
    // Causes the app to rebuild with the new _selectedSetting.
    setState(() {
      _selectedSetting = setting;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sm kccp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic AppBar'),
          actions: <Widget>[
            // overflow menu
            PopupMenuButton<Settings>(
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
        */
/*body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SettingCard(setting: _selectedSetting),
        ),*//*

      ),
    );
  }
}

class SettingCard extends StatelessWidget {
  const SettingCard({Key key, this.setting}) : super(key: key);

  final Settings setting;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.body2;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(setting.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
*/
