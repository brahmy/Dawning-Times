import 'package:flutter/material.dart';

class HomeNewsFeedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeNewsFeed(),
    );
  }
}

class HomeNewsFeed extends StatefulWidget {
  @override
  HomeNewsFeedState createState() => HomeNewsFeedState();
}

class HomeNewsFeedState extends State<HomeNewsFeed> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<int> _fetchedItems = [0, 1, 2, 3];
  List<int> _items = [];
  int counter = 0;

  @override
  void initState() {
    super.initState();

    _loadItems();
  }

  Future<void> _loadItems() async {
    for (int item in _fetchedItems) {
      // 1) Wait for one second
      await Future.delayed(Duration(milliseconds: 1000));
      // 2) Adding data to actual variable that holds the item.
      _items.add(item);
      // 3) Telling animated list to start animation
      listKey.currentState.insertItem(_items.length - 1);
    }
  }

  Widget slideIt(BuildContext context, int index, animation) {
    int item = _items[index];
    TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset(0, 0),
      ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.bounceIn,
          reverseCurve: Curves.bounceOut)),
      child: SizedBox(
        height: 128.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $item', style: textStyle),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Container(
            height: double.infinity,
            child: AnimatedList(
              key: listKey,
              initialItemCount: _items.length,
              itemBuilder: (context, index, animation) {
                return slideIt(context, index, animation);
              },
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.greenAccent),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  setState(() {
                    listKey.currentState.insertItem(0,
                        duration: const Duration(milliseconds: 500));
                    _items = []
                      ..add(counter++)
                      ..addAll(_items);
                  });
                },
                child: Text(
                  "Add item to first",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              FlatButton(
                onPressed: () {
                  if (_items.length <= 1) return;
                  listKey.currentState.removeItem(
                      0, (_, animation) => slideIt(context, 0, animation),
                      duration: const Duration(milliseconds: 500));
                  setState(() {
                    _items.removeAt(0);
                  });
                },
                child: Text(
                  "Remove first item",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}


