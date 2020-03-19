import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';
import '../../utils/constants.dart';

class AppView extends StatefulWidget {
  const AppView({Key key}) : super(key: key);

  @override
  _AppViewState createState() => new _AppViewState();
}

class _AppViewState extends State<AppView> {

  YoutubeAPI ytApi = new YoutubeAPI(KeyStore.key);
  List<YT_API> ytResult = [];

  Call_API() async {
    print('UI called');
    String query = "BTS";
    ytResult = await ytApi.search(query);
    setState(() {
      print('UI Updated');
    });
  }

  @override
  void initState() {
    //init
    super.initState();
    //call API
    Call_API();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: new Container(
          child: ListView.builder(
              itemCount: ytResult.length,
              itemBuilder:(_, int index) => ListItem(index)
          ),
        )
      ),
    );
  }

  Widget ListItem(index){
    return new Card(
      child: new Container(
        margin: EdgeInsets.symmetric(vertical: 7.0),
        padding: EdgeInsets.all(17.0),
        child: new Row(
          children: <Widget>[
            new Image.network(ytResult[index].thumbnail['default']['url'],),
            new Padding(padding: EdgeInsets.only(right: 20.0)),
            new Expanded(child: new Column(mainAxisAlignment: MainAxisAlignment.start,
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: <Widget>[
                                            new Text(ytResult[index].title,
                                                      softWrap: true,
                                                      style: TextStyle(fontSize: 18.0),
                                            ),
                                            new Padding(padding: EdgeInsets.only(bottom: 1.5)),
                                            new Text(
                                              ytResult[index].channelTitle,
                                              softWrap: true,
                                            ),
                                            new Padding(padding: EdgeInsets.only(bottom: 3.0)),
                                            new Text(
                                              ytResult[index].url,
                                              softWrap: true,
                                            )
                                          ]
            ))
          ],
        ),
      ),
    );
  }
}


