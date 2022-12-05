import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Content {
  final String name;
  final String imageUrl;
  final String videoUrl;
  final String description;
  var color;

  Content({
    required this.name,
    required this.imageUrl,
    this.videoUrl ='',
    this.description = '',
    this.color,
  });
}