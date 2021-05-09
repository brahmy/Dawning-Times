import 'package:dawning_times/screens/auth/signin.dart';
import 'package:flutter/material.dart';

class ChooseLanguage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChooseLanguageState();
  }
}

class ChooseLanguageState extends State<ChooseLanguage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Dawning Times"),
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.language),
                        SizedBox(height: 20.0),
                        Text("English",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20.0)),
                      ],
                    ),
                    color: Colors.green[100],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.language),
                      SizedBox(height: 20.0),
                      const Text('తెలుగు',
                          style: TextStyle(
                              decoration: TextDecoration.none, fontSize: 20.0)),
                    ],
                  ),
                  color: Colors.green[200],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
