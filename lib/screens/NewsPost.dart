import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewsPost extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewsPostState();
  }

}

class NewsPostState extends State<NewsPost>{
  final maxLines = 100;
  File _image;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Dawning Times"),
        ),
    body:SingleChildScrollView(
        child: new Column(
        children: <Widget>[
          _buildNewsHeadLine(),
        Row(
            children: <Widget>[
              _imageUpload(),
              _imageUpload(),
            ]
        ),
          _buildNewsFeed(),
          _submitButton(),
        ]))
    );
  }

  Widget _buildNewsHeadLine(){
    return Container(
        margin: EdgeInsets.all(5),
    child:
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        maxLength: 140,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'News Head Line',
        ),
      ),
    )
    );
  }
  Widget _buildNewsFeed() {
    return Container(
      margin: EdgeInsets.all(5),
      height: maxLines * 24.0,
      child:
      Padding(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    child: TextFormField(
        maxLines: maxLines,
        maxLength: maxLines * 24,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter a message",
          fillColor: Colors.grey[300],
          filled: true,
        ),
      ),
      ),
    );
  }

  Widget _submitButton(){
    return Container(
      child:ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith<double>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed))
                  return 16;
                return null;
              }),
        ),
        onPressed: () { },
        child: Text('Submit News Feed'),
      )
      ,
    );
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _getFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _getFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  Widget _imageUpload(){
    return Container(
        child:Center(
          child: GestureDetector(
            onTap: () {
              _showPicker(context);
            },
            child: ClipRRect(
              child: _image != null
                  ? ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.file(
                  _image,
                  width: 150,
                  height: 150,
                  fit: BoxFit.fitHeight,
                )
              )
                  : Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50)),
                width: 100,
                height: 100,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ),
    ),
    );
  }
}