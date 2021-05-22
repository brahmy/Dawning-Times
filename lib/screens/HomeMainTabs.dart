import 'dart:ffi';
import 'package:dawning_times/screens/HomeNewsFeed.dart';
import 'package:dawning_times/screens/NewsFeed.dart';
import 'package:flutter/material.dart';
import 'InternationalTabs.dart';

class HomeMainTabs extends StatelessWidget {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = true;
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: isTrue,
        home: DefaultTabController(
      length: 8,
      child: Scaffold(
          drawer: Drawer(),
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                new SliverAppBar(
                  title: Text('Tabs Demo'),
                  pinned: _pinned,
                  floating: _floating,
                  bottom: TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // Creates border
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
                CardList(),
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
            onPressed: () {
              NewsFeedHome();
            },
          )),
    ));
  }
}
