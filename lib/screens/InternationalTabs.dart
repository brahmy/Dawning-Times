import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardList extends StatefulWidget {
  const CardList({Key key}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  int _itemCount = 0;

  void _incrementCounter() {
    setState(() {
      _itemCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget allcards;
    return new Scaffold(
        body: new Container(
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            _card(context),
            SizedBox(
              height: 5,
            ),
            _card(context),
            SizedBox(
              height: 5,
            ),
            _card(context),
          ],
        ),
      ),
    ));
  }
}

/// card Image sliders
int _currentIndex = 0;
List cardList = [
  Image1(),
  Image2(),
  Image3(),
  Image4(),
];
/*List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for(var i=0; i<list.length;i++){
    result.add(handler(i, list[i]));
  }
  return result;
}*/
void setState(Null Function() param0) {}

@override
Widget _card(BuildContext context) {
  return new Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7),
    ),
    color: Colors.grey[400],
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 1, 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1621095271433-2e4ec715c'
                          '704?ixid=MnwxMjA3fDB8MHxwaG90by1'
                          'wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=form'
                          'at&fit=crop&w=634&q=80'),
                      radius: 25,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Dawning Times And times ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black87),
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          softWrap: true,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Posted 1 day ago',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black54),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: new Padding(
                      padding: new EdgeInsets.fromLTRB(1, 1, 1, 1),

                      /// Add Click Function
                      child: new IconButton(
                        icon: Icon(Icons.share_outlined),
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black38,
          ),

          /// Adding image sliders
          new Container(
            child: cardImageSlider(context),
          ),
          Divider(
            color: Colors.black38,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: new Text(
                /// Title Calling
                'Title is implemented by a someone that things are happens',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: new Text(
                /// Description calling
                'Description is implemented to display the '
                'description as you need',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black38,
          ),
          new Container(
              padding: new EdgeInsets.fromLTRB(1, 5, 1, 5),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: new Padding(
                            padding: new EdgeInsets.fromLTRB(1, 1, 1, 1),

                            ///Add ClickFunction
                            child: new IconButton(
                              icon: Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Colors.black87,
                              ),
                              iconSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          child: new Padding(
                            padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                            child: Text(
                              '100',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black87),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        new Padding(
                            padding: new EdgeInsets.fromLTRB(1, 1, 1, 1),

                            ///Add ClickFunction
                            child: new IconButton(
                              icon: Icon(Icons.favorite_outline),
                            )),
                        Container(
                          child: new Padding(
                            padding: new EdgeInsets.fromLTRB(1, 1, 1, 1),

                            /// Add Click Function
                            child: new IconButton(
                              icon: Icon(Icons.remove_red_eye_outlined),
                            ),
                          ),
                        ),
                        Container(
                          child: new Padding(
                            padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                            child: Text('100'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    ),
  );
}

Widget cardImageSlider(BuildContext context) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: card,
                ),
              );
            });
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cardList.map((urlOfItem) {
            int index = cardList.indexOf(urlOfItem);
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Color.fromRGBO(0, 0, 0, 0.8)
                    : Color.fromRGBO(0, 0, 0, 0.3),
              ),
            );
          }).toList(),
        )
      ],
    ),
  );
}

class Image1 extends StatelessWidget {
  const Image1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Image.network(
              'https://www.gstatic.com/webp/gallery/3.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Description is implemented to display Text Message',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Image2 extends StatelessWidget {
  const Image2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.center,
      child: Image.network(
        'https://www.gstatic.com/webp/gallery/1.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class Image3 extends StatelessWidget {
  const Image3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.center,
      child: Image.network(
        'https://images.unsplash.com/photo-1611095565995-d'
        '09bbf618f6d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib='
        'rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
        fit: BoxFit.fill,
      ),
    );
  }
}

class Image4 extends StatelessWidget {
  const Image4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      alignment: Alignment.center,
      child: Image.network('https://images.unsplash.com/photo-1611095565995-d'
          '09bbf618f6d?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib='
          'rb-1.2.1&auto=format&fit=crop&w=1051&q=80'),
    );
  }
}

/*
class CustomCard extends StatelessWidget {
  const CustomCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: [
          new Image.asset("assets/Image1.png"),
          new Text(
            'Something',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          new Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(7.0),
            child: new Row(
              children: [
                new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Icon(Icons.thumb_up),
                ),
                new Padding(
                  padding: new EdgeInsets.all(7.0),
                  child: new Icon(Icons.comment),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
*/
