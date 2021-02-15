import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../providers/restaurant_list.dart';

class RestaurantDetailTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final restaurantId = ModalRoute.of(context).settings.arguments as String;
    final restaurant = Provider.of<RestaurantList>(context).findById(restaurantId);

    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            Container(
              child: Image.network(restaurant.img, fit: BoxFit.fill,),
              width: double.infinity,
              height: 400,
            ),
            IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: Theme.of(context).primaryColor,), onPressed: (){
              Navigator.of(context).pop();
            }),
            Container(
              //STYLE//
              margin: EdgeInsets.symmetric(
                vertical: 300,
                horizontal: 100,
              ),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                border: Border.all(color: Theme.of(context).primaryColor, width: 2),
              ),
              //STYLE//
              child: Column(
                children: [
                  Text(restaurant.title, style: TextStyle(fontSize: 30),),
                  SizedBox(
                    height: 40,
                  ),
                  RatingBar.builder(initialRating: restaurant.rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
