import 'package:dawning_times/screens/HomeMainTabs.dart';
import 'package:dawning_times/screens/auth/signup.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Dawning Times"),
      ),
      body: Center(
        child:SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 200.0, 10.0, 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[300],
                        focusColor: Colors.grey[300],
                        labelText: 'Enter Email',
                        contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal:30.0 ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[300],
                        focusColor: Colors.grey[300],
                        labelText: 'Enter PIN',
                        contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal:30.0 ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeMainTabs()));
                  },
                  child: Text('SignIn'),
                ),
                SizedBox(height: 50.0,),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUp()));
                  },
                  child: Text(
                    'Not a Member? SignUp',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}

