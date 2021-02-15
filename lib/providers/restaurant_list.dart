import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './restaurant.dart';

class RestaurantList with ChangeNotifier{
  List<Restaurant> _restaurant = [
    Restaurant(
      id: 'p1',
      title: '6AM',
      rating: -1,
      type: "Breakfast",
      img:
      'https://i.ytimg.com/vi/ricQOBhZdbM/hqdefault.jpg',
    ),
    Restaurant(
      id: 'p2',
      title: 'Coffee Address',
      rating: 0,
      type: "Coffee",
      img:
      'https://al3gla.files.wordpress.com/2016/02/addresscafe.png',
    ),
    Restaurant(
      id: 'p3',
      title: 'StarBox',
      rating: 4,
      type: "Coffee",
      img:
      'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png',
    ),
    Restaurant(
      id: 'p4',
      title: 'Jalilah',
      rating: 0,
      type: "Arabic",
      img:
      'https://hsaa.hsobjects.com/h/restaurants/logo_ars/000/009/196/a2f2fbb99fdd2cc12b23abb1a90abe14-small.jpeg',
    ),Restaurant(
      id: 'p5',
      title: 'Kfc',
      rating: 5,
      type: "American",
      img:
      'https://i.pinimg.com/originals/d3/69/a1/d369a13f2e8d69884e5d7ec90f9c8337.jpg',
    ),
  ];

  List<Restaurant> get restaurantList{
    return [..._restaurant];
  }

  Restaurant findById(String id){
    return _restaurant.firstWhere((element) => element.id == id);

  }
}