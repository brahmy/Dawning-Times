import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

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
                SizedBox(height: 5,),
                _card(context),
                SizedBox(height: 5,),
                _card(context),
              ],
            ),
          ),

        )

    );

  }
}
@override
Widget _card(BuildContext context){
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
              padding: const EdgeInsets.fromLTRB(5,5,1,10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1621095271433-2e4ec715c'
                            '704?ixid=MnwxMjA3fDB8MHxwaG90by1'
                            'wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=form'
                            'at&fit=crop&w=634&q=80'
                      ),
                      radius: 25,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Dawning Times',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black87
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Posted 1 day ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      child: new Padding(
                        padding: new EdgeInsets.fromLTRB(1,1,1,1),
                        /// Add Click Function
                        child: new IconButton(
                            icon: Icon(Icons.share_outlined),
                        ),
                      ),

                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black38,
          ),
          new Image.network(
            /// Image Calling
            'https://images.unsplash.com/photo-1523215108660-3fdf7932d7a5?ixid='
                'MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufD'
                'B8fHx8&ixlib=rb-1.2.1&auto=forma'
                't&fit=crop&w=1045&q=80',
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
              padding: new EdgeInsets.fromLTRB(1,5,1,5),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                         Container(
                           child: new Padding(
                            padding: new EdgeInsets.fromLTRB(1,1,1,1),
                            ///Add ClickFunction
                            child: new  IconButton(
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
                                  fontSize: 16,
                                  color: Colors.black87
                              ),
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
                          padding: new EdgeInsets.fromLTRB(1,1,1,1),
                          ///Add ClickFunction
                          child: new IconButton(
                            icon: Icon(Icons.favorite_outline),
                          )
                        ),
                        Container(
                          child: new Padding(
                            padding: new EdgeInsets.fromLTRB(1,1,1,1),
                            /// Add Click Function
                            child: new IconButton(
                              icon: Icon(Icons.remove_red_eye_outlined),
                            ),
                          ),
                        ),
                        Container(
                          child: new Padding(
                            padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                            child: Text(
                                '100'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          )
        ],
      ),
    ),
  );
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
