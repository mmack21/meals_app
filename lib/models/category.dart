import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;

  // name constructor with default value of color in case it's not provided
  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}
