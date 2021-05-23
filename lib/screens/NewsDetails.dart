import 'package:flutter/material.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({Key key}) : super(key: key);

  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Details'),
      ),
      body: Container(

      ),
    );
  }
}


Widget _imageSlider(BuildContext context){
  return new Container(
    child: Column(
      children: [

      ],
    ),
  );
}