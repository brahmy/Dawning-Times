import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:dawning_times/screens/NewsDetails.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
    return new Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: new Column(
            children: <Widget>[
              Container(
                  child: _mainSlider(context),
                constraints: BoxConstraints.expand(
                  height: 180,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(child: _card(context)),
              SizedBox(
                height: 5,
              ),
              Container(child: _card(context)),
              SizedBox(
                height: 5,
              ),
              Container(child: _card(context)),
            ],
          ),
        ));
  }
}
/// main Image Slider
Widget _mainSlider(BuildContext context){
  var images = [
    'https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGZhc2hpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
     'https://picsum.photos/200/300?grayscale',
    'https://picsum.photos/200/300/?blur',
    'https://picsum.photos/200/300.jpg',
  ];
  return new Swiper(
    autoplay: false,
    itemBuilder: (BuildContext context, int index){
      return Stack(
        alignment: Alignment.center,
        children: [
          GestureDetector(
            child: new Image.network(
              images[index],
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
                'Text On the Image',
              style: TextStyle(
                fontSize: 18
              ),
            ),
          )
        ],
      );
    },
    itemCount: images.length,
    viewportFraction: 0.8,
    scale: 0.9,
  );
}
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
                            )
                        ),
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
          _cardImageSlider(context),
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
/// card Image sliders
Widget _cardImageSlider(BuildContext context){
  return ListView(
    shrinkWrap: true,
    children: [
      CarouselSlider(
        items: [
          //1st Image of Slider
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(""
                    "https://picsum.photos/536/354"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/536/354"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          height: 150.0,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
          scrollPhysics: ScrollPhysics(),
        ),
      ),
    ],
  );
}