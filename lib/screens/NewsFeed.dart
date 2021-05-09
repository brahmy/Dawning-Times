import 'package:dawning_times/model/NewsDataModel.dart';
import 'package:dawning_times/screens/HomeNewsFeed.dart';
import 'package:dawning_times/widgets/NewsFeedCard.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    /* return FutureBuilder<List<NewsDataModel>>(
      future: fetchFlowers(),
      builder: (context, snapshot) {

        if (!snapshot.hasData) return Center(
            child: CircularProgressIndicator()
        );
*/
    return Container(
      child: _myListView(context),
    );
    // getNewsFeed(wonders);
    /*ListView(
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
        );*/
    // },
    // );
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

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          height: MediaQuery.of(context).size.height*0.12,
          width: double.maxFinite,
          child: SizedBox(
              child: Card(
                elevation: 5,
                child: ListTile(
                  leading: Container(
                    height: MediaQuery.of(context).size.height*0.12,
                    child: Image.asset('assets/image1.png',height: MediaQuery.of(context).size.height*0.12),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  title: Text(titles[index]),
                ),
              )
          )
      );
    },
  );
}
