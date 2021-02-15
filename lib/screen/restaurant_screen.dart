import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../providers/restaurant_list.dart';
import '../widgets/restuarant_item.dart';

class RestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final restaurant= Provider.of<RestaurantList>(context);
   final restaurantList= restaurant.restaurantList;
    return Scaffold(
      appBar: AppBar(
        title: Text("VQ"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.filter_alt_sharp), onPressed: () {}),
            ],
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: restaurantList.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          // create: (c) => products[i],or
          value:restaurantList[i],
          child: RestaurantItem(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
