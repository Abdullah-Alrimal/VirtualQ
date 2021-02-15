import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import './screen/restaurant_detail_screen.dart';
import './providers/restaurant_list.dart';
import './screen/restaurant_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color = Color(0xFFcc1c41);

    return MultiProvider(
        providers: [
        ChangeNotifierProvider(
        create: (ctx) => RestaurantList(),

    ),
      ],
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            canvasColor: Colors.grey[200],
            primaryColor: color,
            accentColor: Colors.white,
          ),
          home: RestaurantScreen(),
          routes: {
            RestaurantDetailScreen.routeName: (ctx) => RestaurantDetailScreen(),
          }
          ),

    );

  }
}
