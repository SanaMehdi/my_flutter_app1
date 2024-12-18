import 'package:flutter/material.dart';

class FavoriteRestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous page
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    'My Favourite Restaurants',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    buildRestaurantItem(
                      context,
                      'Pizza Italiano',
                      'assets/images/Pizzaitaliano.png',
                      '4/5',
                      Colors.green,
                    ),
                    buildRestaurantItem(
                      context,
                      'Traditional Kebab',
                      'assets/images/Traditionalkebab.png',
                      '2/5',
                      Colors.orange,
                    ),
                    buildRestaurantItem(
                      context,
                      'Star Fish',
                      'assets/images/Starfish.png',
                      '5/5',
                      Colors.green,
                    ),
                    buildRestaurantItem(
                      context,
                      'Boston Burger\'s',
                      'assets/images/Bostonburger.png',
                      '3/5',
                      Colors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.black54,
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/'); // Navigate to Home
                break;
              case 1:
              // Stay on Favorites page
                break;
              case 2:
                Navigator.pushNamed(context, '/cart'); // Navigate to Cart page
                break;
              case 3:
                Navigator.pushNamed(context, '/notifications'); // Notifications
                break;
              case 4:
                Navigator.pushNamed(context, '/profile'); // Profile page
                break;
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.redAccent),
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
      ),
    );
  }

  Widget buildRestaurantItem(BuildContext context, String name, String imageUrl, String rating, Color ratingColor) {
    return GestureDetector(
      onTap: () {
        // Navigate to a detailed restaurant page (if needed)
        Navigator.pushNamed(context, '/restaurant_details', arguments: {
          'name': name,
          'imageUrl': imageUrl,
          'rating': rating,
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageUrl, // Use Image.asset to load images from assets
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: ratingColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, size: 16, color: ratingColor),
                  SizedBox(width: 4),
                  Text(
                    rating,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ratingColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
