
import 'dart:io';

import 'package:dawning_times/screens/auth/geo_locator.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   File _image;
  final picker = ImagePicker();

  _openGallary(BuildContext context) async{
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

  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Make a Choice'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              GestureDetector(
                  child: Text('Gallary'),
                  onTap: () {
                    _openGallary(context);
                  }
              ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 50.0),
                  child: Text('No Image Selected'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[300],
                        focusColor: Colors.grey[300],
                        labelText: 'Enter MobileNumber',
                        contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal:30.0 ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[300],
                        focusColor: Colors.grey[300],
                        labelText: 'Enter Pin',
                        contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal:30.0 ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Location()));
                  },
                  child: Text('Get Location'),
                ),

                RaisedButton(
                  onPressed: () => _showChoiceDialog(context),
                  child: Text('Select picture'),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

