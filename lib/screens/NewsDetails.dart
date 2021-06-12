import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class NewsDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewsDetailsState();
  }
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
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: _profile(context),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: _newsImagesSlider(context),
                    constraints: BoxConstraints.expand(
                      height: MediaQuery.of(context).size.height * 0.27,
                    ),
                  ),
                  SizedBox(height:25,),
                  Text(
                    'This is the Heading Of the news',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,1,1,10),
                    child: Text(
                      'this is the Description of the news '
                          'we can read here...',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87
                      ),
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


/*Widget _imageSlider(BuildContext context){
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
}*/

Widget _newsImagesSlider(BuildContext context){
  final List<String> imgList = [
    'https://picsum.photos/536/354',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://picsum.photos/536/354',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];


  final List<Widget> imageSliders = imgList.map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${imgList.indexOf(item)} image',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    ),
  )).toList();
  return Container(
      child: Column(children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
      ],)
  );
}

Widget _profile(BuildContext context){
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1621095271433-2e4ec715c'
                      '704?ixid=MnwxMjA3fDB8MHxwaG90by1'
                      'wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=form'
                      'at&fit=crop&w=634&q=80'),
              radius: 35,
            ),
          ),
          SizedBox(width: 10,),
          Container(
           child: Expanded(
             child: Text(
               'May be Someone posts wonderful post',
               style: TextStyle(
                 color: Colors.black87,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),
          ),
          SizedBox(width: 10,),
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
          )
        ],
      ),
    ),
  );
}