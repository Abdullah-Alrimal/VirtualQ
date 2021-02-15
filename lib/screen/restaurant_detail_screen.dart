import 'package:flutter/material.dart';

import '../widgets/restaurant_detail_top.dart';

class RestaurantDetailScreen extends StatelessWidget {
  static const routeName = "/restaurant-detail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RestaurantDetailTop(),

        );
  }
}
