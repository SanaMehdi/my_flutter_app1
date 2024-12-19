import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/burger_page.dart';
import 'package:my_flutter_app/pages/favorite_restaurants_page.dart';
import 'package:my_flutter_app/pages/home_page.dart';
import 'package:my_flutter_app/pages/kebab_page.dart';
import 'package:my_flutter_app/pages/pizza_page.dart';
import 'package:my_flutter_app/view/cart_screen.dart';
import 'package:my_flutter_app/view/login_screen.dart';
import 'package:my_flutter_app/view/sign_up_screen.dart';
import 'package:provider/provider.dart';

import 'controller/cart_controller.dart';


//import 'restaurant_details_page.dart';
//import 'cart_page.dart';
//import 'notifications_page.dart';
//import 'profile_page.dart';
 import 'home_page.dart';
















void main() {
  runApp(
      ChangeNotifierProvider(
          create: (context) => CartController(),
          child: FoodOfferApp(),
  ),
      );
}
class FoodOfferApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpScreen(),
        '/favorites': (context) => FavoriteRestaurantsPage(),
        '/burgers': (context) => BurgersPage(),
        '/pizza': (context) => PizzaPage(),
        '/kebab': (context) => KebabPage(),
        '/cart': (context) => CartScreen(),
        '/home_page': (context) => HomePage(),
        '/sign_up_screen': (context) => SignUpScreen(),
        '/login_screen': (context) => LoginScreen(),

        // '/restaurant_details': (context) => R,
     //   '/cart': (context) => CartPage(),
       // '/notifications': (context) => NotificationsPage(),
       // '/profile': (context) => ProfilePage(),
      },
    );
  }
}
Widget buildIconCategory(BuildContext context, String title, String imagePath,
    String route) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, route);
    },
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}






