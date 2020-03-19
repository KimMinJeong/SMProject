import 'package:flutter/material.dart';

class NewView extends StatefulWidget {
  @override
  _NewViewState createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  final List<String> _category = [
    'BTS',
    'Red Velvet',
    'IU',
    'EXO',
    'TWICE',
    'BTS',
    'Red Velvet',
    'IU',
    'EXO',
    'TWICE',
    'EXO',
    'TWICE',
  ];
  final List<String> _categoryImage = [
    'http://ilovepapers.com/wp-content/uploads/papers.co-ar13-minimal-sunset-art-illustration-dark-blue-6-wallpaper.jpg',
    'https://image.freepik.com/free-vector/abstract-dynamic-pattern-wallpaper-vector_53876-43459.jpg',
    'http://www.thelawofattraction.com/wp-content/uploads/law-of-polarity.png',
    'http://www.thelawofattraction.com/wp-content/uploads/law-of-polarity.png',
    'https://i.pinimg.com/originals/00/aa/e7/00aae7cd6cbae92d0f5d00baab3fe289.jpg',
    'http://ilovepapers.com/wp-content/uploads/papers.co-ar13-minimal-sunset-art-illustration-dark-blue-6-wallpaper.jpg',
    'https://image.freepik.com/free-vector/abstract-dynamic-pattern-wallpaper-vector_53876-43459.jpg',
    'http://www.thelawofattraction.com/wp-content/uploads/law-of-polarity.png',
    'http://www.thelawofattraction.com/wp-content/uploads/law-of-polarity.png',
    'https://i.pinimg.com/originals/00/aa/e7/00aae7cd6cbae92d0f5d00baab3fe289.jpg',
    'http://www.thelawofattraction.com/wp-content/uploads/law-of-polarity.png',
    'https://i.pinimg.com/originals/00/aa/e7/00aae7cd6cbae92d0f5d00baab3fe289.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width / 3;
    return Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: _category.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Column(
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Container(
                            width: _width - 33,
                            height: _width - 33,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: FadeInImage(
                                image: NetworkImage(_categoryImage[index]),
                                fit: BoxFit.cover,
                                placeholder:
                                AssetImage('assets/images/loading.gif'),
                              ),
                            ),
                          ),
                        ),
                        Text(_category[index], style: Theme.of(context).textTheme.body2),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
