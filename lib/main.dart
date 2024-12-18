import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/burger_page.dart';
import 'package:my_flutter_app/pages/favorite_restaurants_page.dart';
import 'package:my_flutter_app/pages/kebab_page.dart';
import 'package:my_flutter_app/pages/pizza_page.dart';
import 'package:my_flutter_app/view/cart_screen.dart';
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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Food Offer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Sana.jpeg'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.redAccent),
                  SizedBox(width: 8),
                  Text(
                    'Paris, France',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Delicious Food?\nGo Ahead...',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search for your favourite food',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.tune),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    '30% Off on your first purchase',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildCategoryItem(
                      context, 'Burger', 'assets/images/Burger.png', '/burgers'),
                  buildCategoryItem(
                      context, 'Pizza', 'assets/images/Pizza11.png', '/pizza'),
                  buildCategoryItem(
                      context, 'Kebab', 'assets/images/Kebab1.png', '/kebab'),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'See More...',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildIconCategory(context, 'Vegan', 'assets/images/Vegan.png', '/'),
                  buildIconCategory(
                      context, 'Sea Food', 'assets/images/Seafood.png', '/'),
                  buildIconCategory(
                      context, 'Fast Food', 'assets/images/Fastfood.png', '/'),
                  buildIconCategory(
                      context, 'kebab', 'assets/images/kebab1.png', '/'),
                ],
              ),
              GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildIconCategory(context, 'Salad', 'assets/images/Salad.png', '/'),
                  buildIconCategory(
                      context, 'Desert', 'assets/images/Desert.png', '/'),
                  buildIconCategory(
                      context, 'Cake', 'assets/images/Cake.png', '/'),
                  buildIconCategory(
                      context, 'Coffee', 'assets/images/Coffee.png', '/'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black54,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/favorites');
              break;
            case 2:
              Navigator.pushNamed(context, '/cart');
              break;
            case 3:
              Navigator.pushNamed(context, '/notifications');
              break;
            case 4:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildCategoryItem(
      BuildContext context, String title, String imagePath, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

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
        '/': (context) => HomePage(),
        '/favorites': (context) => FavoriteRestaurantsPage(),
        '/burgers': (context) => BurgersPage(),
        '/pizza': (context) => PizzaPage(),
        '/kebab': (context) => KebabPage(),
        '/cart': (context) => CartScreen(),
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


