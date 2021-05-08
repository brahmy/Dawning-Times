import 'package:dawning_times/model/NewsDataModel.dart';
import 'package:flutter/material.dart';

class NewsFeedCard extends StatelessWidget {
  const NewsFeedCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);
  final NewsDataModel choice;
  final VoidCallback onTap;
  final NewsDataModel item;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.topLeft,
                child: Icon(choice.image, size:80.0, color: textStyle.color,)),
            new Expanded(
                child: new Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.topLeft,
                  child:
                  Text(choice.newsTitle, style: null, textAlign: TextAlign.left, maxLines: 5,),
                )
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
    );
  }
}