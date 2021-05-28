import 'dart:io';

import 'package:dawning_times/screens/auth/geo_locator.dart';
import 'package:dawning_times/screens/auth/signin.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  File _image;
  final picker = ImagePicker();

  _openGallary(BuildContext context) async {
    var picture = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = picture as File;
    });
    Navigator.of(context).pop();
  }

  _openCemera(BuildContext context) async {
    var picture = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = picture as File;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Make a Choice'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                      child: Text('Gallary'),
                      onTap: () {
                        _openGallary(context);
                      }),
                  Padding(padding: EdgeInsets.all(5.0)),
                  GestureDetector(
                    child: Text('Camera'),
                    onTap: () {
                      _openCemera(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  ///location
  var locatonMessage = '' ;

   String latitude;
   String longitude;

  ///function for getting the current user Location
  /// but before u add the permission

  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lat = position.latitude;
    var long = position.longitude;

    ///passing this to latitude and longitude Strings

    latitude = "$lat";
    longitude = "$long";

    setState(() {
      locatonMessage = "Latitude: $lat and Longitude: $long";
    });
  }

  /// function for Opening it in GoogleMap

  void googleMap() async {
    String googleUrl =
        "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";
    if(await canLaunch(googleUrl)) {
      await launch(googleUrl);
    }else{
      throw("Couldn't open GoogleMaps");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Dawning Times"),
      ),
      body:
        Center(
        child:SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        height: MediaQuery.of(context).size.width / 3,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage('assets/image1.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child:  Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius:  BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        icon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.person_outline),
                        ),
                        hintText: 'Enter UserName',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child:  Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius:  BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        icon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.mail_outline),
                        ),
                        hintText: 'Enter Email',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child:  Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius:  BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        icon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.keyboard),
                        ),
                        hintText: 'Enter Mobile Number',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child:  Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius:  BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        icon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.lock_outline),
                        ),
                        hintText: 'Enter PIN',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: Text(
                    locatonMessage,
                    style: TextStyle(
                        color: Colors.cyanAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 320,height: 47),
                  child: ElevatedButton(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Text(
                            'Get Location',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      getCurrentLocation();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 320,height: 47),
                  child: ElevatedButton(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Text(
                            'Select Picture',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      _showChoiceDialog(context);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white60,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 325,height: 47),
                  child: ElevatedButton(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent,
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)
                        )
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
