import 'package:flutter/material.dart';

class NewsDataModel {
  int id;
  String newsTitle;
  String newsImageURL;
  IconData image;

  NewsDataModel({
    this.id,
    this.newsTitle,
    this.newsImageURL,
    this.image
  });

  factory NewsDataModel.fromJson(Map<String, dynamic> json) {
    return NewsDataModel(
        id: json['id'],
        newsTitle: json['flower_name'],
        newsImageURL: json['flower_image_url'],
      image:Icons.fiber_new
    );
  }
}