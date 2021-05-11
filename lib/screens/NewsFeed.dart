import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dawning_times/model/NewsDataModel.dart';
import 'package:dawning_times/screens/HomeNewsFeed.dart';
import 'package:dawning_times/widgets/NewsFeedCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsFeedHome extends StatefulWidget {
  @override
  NewsFeedHomeState createState() => NewsFeedHomeState();
}

class NewsFeedHomeState extends State<NewsFeedHome> {
  /*List wonders = [
    NewsDataModel(
        id: 1,
        newsTitle: "Your news feed brahmy",
        newsImageURL:
            "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Taj-Mahal.jpg",
        image: Icons.fiber_new),
    NewsDataModel(
        id: 2,
        newsTitle: "Your news feed brahmy",
        newsImageURL:
            "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Taj-Mahal.jpg",
        image: Icons.fiber_new),
    NewsDataModel(
        id: 3,
        newsTitle: "Your news feed brahmy",
        newsImageURL:
            "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/02/Taj-Mahal.jpg",
        image: Icons.fiber_new),
  ];*/
  final String apiURL =
      'https://flutter-examples.000webhostapp.com/getFlowersList.php';

  /*Future<List<NewsDataModel>> fetchFlowers() async {
    var response = await http.get(apiURL);

    if (200 == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<NewsDataModel> listOfFruits = items.map<NewsDataModel>((json) {
        return NewsDataModel.fromJson(json);
      }).toList();

      return listOfFruits;
    }
    else {
      throw Exception('Failed to load data from Server.');
    }
  }

  selectedItem(BuildContext context, String holder) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(holder),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
*/
  /* @override
  Widget build(BuildContext context) {
    */ /* return FutureBuilder<List<NewsDataModel>>(
      future: fetchFlowers(),
      builder: (context, snapshot) {

        if (!snapshot.hasData) return Center(
            child: CircularProgressIndicator()
        );
*/ /*
    return Column(
      children: [
        Container(
          child: imageSlider(context),
        ),
        Container(
          child:_myListView(context),
        ),

      ],

    );
    // getNewsFeed(wonders);
    */ /*ListView(
          children: snapshot.data
              .map((data) => Column(children: <Widget>[
            GestureDetector(
              onTap: (){selectedItem(context, data.newsTitle);},
              child: Row(
                  children: [
                    Container(
                        width: 200,
                        height: 100,
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child:
                            Image.network(data.newsImageURL,
                              width: 200, height: 100, fit: BoxFit.cover,))),

                    Flexible(child:
                    Text(data.newsTitle,
                        style: TextStyle(fontSize: 18)))
                  ]),),

            Divider(color: Colors.black),

          ],))
              .toList(),
        );*/ /*
    // },
    // );
  }
}*/
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
                child: Container(
                  constraints: BoxConstraints.expand(
                    height: 150,
                  ),
                  child: imageSlider(context),
                ),
              ),
              SizedBox(height: 1.0,),
              Container(
                child: _myListView(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
Widget _myListView(BuildContext context) {
  final titles = [
    'Your news feed brahmy seems we have statred the  app',
    'Your news feed brahmy',
    'Your news feed brahmy',
    'Your news feed brahmy seems we have statred the  app',
    'Your news feed brahmy railway',
    'Your news feed brahmy seems we have statred the  app',
    'subway',
    'Your news feed brahmy seems we have statred the  app',
    'walk'
  ];

  final icons = [
    Image.asset('assets/image1.png'),
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_subway,
    Icons.directions_transit,
    Icons.directions_walk
  ];

  return ListView.separated(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    physics: ScrollPhysics(),
    padding: EdgeInsets.all(0),
    itemCount: titles.length,
    separatorBuilder: (context, index) {
      return Divider(
        color: Color(0xFF000000),
      );
    },
    itemBuilder: (context, index) {
      return listItems(context, index, titles);
    },
  );
}

Widget listItems(BuildContext context, int index, List<String> titles) {
  return Container(
      padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
      height: MediaQuery.of(context).size.height * 0.1,
      width: double.maxFinite,
      child:
          /*ListTile(
        leading: Container(
          height: MediaQuery.of(context).size.height * 0.12,
          child: Image.asset('assets/image1.png',
              height: MediaQuery.of(context).size.height * 0.12),
          decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10.0)),
        ),
        title: Text(titles[index]),
        subtitle: Container(
            child: Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 5.0),
                Text('Dawning Times')
              ],
            )), //
      )*/
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
        children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Image.asset('assets/image1.png',
                          height: MediaQuery.of(context).size.height * 0.1),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex:2,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titles[index],
                            style: TextStyle(fontSize: 16),
                          ),
                          Container(
                              child: Row(
                            children: [
                              Icon(Icons.language),
                              SizedBox(width: 5.0),
                              Text('Dawning Times')
                            ],
                          )),
                          SizedBox(height: 5.0),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [

                                  Icon(Icons.timer),
                                  SizedBox(width: 2.0),
                                  Text(
                                    "2 hours ago",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.0),
                              Row(
                                children: [
                                  Icon(Icons.remove_red_eye_outlined),
                                  SizedBox(width: 2.0),
                                  Text(
                                    "001 view",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.save),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.share),
                                ],
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
          )
  );
}

Widget _bannerImageSlider(BuildContext context) {
  return ListView(
    children: [
      CarouselSlider(
        items: [
          //1st Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/image1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //2nd Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/image1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //3rd Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/image1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //4th Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/image1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //5th Image of Slider
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage('assets/image1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        //Slider Container properties
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    ],
  );
}

Swiper imageSlider(context) {
  var images = ['assets/image1.png', 'assets/image1.png', 'assets/image1.png','assets/image1.png'];
  return new Swiper(
    autoplay: false,

    itemBuilder: (BuildContext context, int index){
      return new Image.asset(images[index]);
    },
    itemCount: images.length,
    viewportFraction: 0.8,
    scale: 0.9,
  );
}