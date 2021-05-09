import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                size: 45.0,
                color: Colors.white,
              ),
              SizedBox(height: 20.0,),
              Text(
                'Get User Location',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30.0,),
              Text(
                locatonMessage,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50.0,),
              /// Button for taking the location
              FlatButton(
                color: Colors.white,
                onPressed: () {
                  getCurrentLocation();
                },
                child: Text('Get User Location'),
              ),
              Spacer(),
              FlatButton(
                color: Colors.white,
                onPressed: () {

                },
                child: Text('Open GoogleMap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

