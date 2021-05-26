import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
      body: new Column(
        children: [
          Container(
            child: imageSlider(context),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Text(
                    'This is the Heading Of the news',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                    ),
                  ),
                  Text(
                    'this is the Description of the news '
                        'we cane write here...',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
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

Swiper imageSlider(context) {
  var images = [
    'https://images.unsplash.com/photo-1548454433-4a1812514573?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njh8fGZhc2hpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/flagged/photo-1575278154894-9f52e7c93bec?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njl8fGZhc2hpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1560528238-73adf75ca6da?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njd8fGZhc2hpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1582966149601-f812a41688d1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzl8fGZhc2hpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ];
  return new Swiper(
    autoplay: false,
    itemBuilder: (BuildContext context, int index){
      return new Image.network(images[index]);
    },
    itemCount: images.length,
    viewportFraction: 0.8,
    scale: 0.9,
  );
}