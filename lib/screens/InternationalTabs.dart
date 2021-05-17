import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  const CardList({Key key}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
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
          new Image.network(
            /// Image Calling
            'https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg',
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
          new Container(
              padding: new EdgeInsets.fromLTRB(1,15,1,5),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.fromLTRB(1,1,5,1),
                    ///Add ClickFunction
                    child: new Icon(Icons.favorite_outline),
                  ),
                  new Padding(
                    padding: new EdgeInsets.fromLTRB(1,1,5,1),
                    /// Add Click Function
                    child: new Icon(Icons.share_outlined),
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
