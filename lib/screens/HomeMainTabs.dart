import 'package:dawning_times/screens/HomeNewsFeed.dart';
import 'package:dawning_times/screens/NewsFeed.dart';
import 'package:flutter/material.dart';

class HomeMainTabs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 8,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              title: Text('Tabs Demo'),
              pinned: true,
              floating: true,
              bottom: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), // Creates border
                    color: Colors.greenAccent),
                tabs: [
                  Tab(child: Text('Home')),
                  Tab(child: Text('National')),
                  Tab(child: Text('International')),
                  Tab(child: Text('state')),
                  Tab(child: Text('local')),
                  Tab(child: Text('Poetry')),
                  Tab(child: Text('Poems')),
                  Tab(child: Text('offers')),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            NewsFeedHome(),
            HomeNewsFeedList(),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_bike, size: 350),
            Icon(Icons.directions_boat, size: 350),
            Icon(Icons.directions_boat, size: 350),
            Icon(Icons.directions_boat, size: 350),
            Icon(Icons.directions_boat, size: 350),

          ],
        ),

      ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Increment',
            child: Icon(Icons.add),
          )
      ),
    ));
  }
}
