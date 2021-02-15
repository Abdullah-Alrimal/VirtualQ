import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Restaurant with ChangeNotifier {
  final String id;
  final String title;
  final double rating;
  final String img;
  final String type;

  Restaurant({
    @required this.id,
    @required this.title,
    @required this.rating,
    @required this.img,
    @required this.type,
  });
}
