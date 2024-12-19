// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(FoodOfferApp());
// }
//
// class FoodOfferApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: Colors.redAccent,
//         fontFamily: 'Arial',
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => HomePage(),
//         '/favorites': (context) => FavoritesPage(),
//         '/burger': (context) => BurgerPage(),
//       },
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink[50],
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Text(
//           'Food Offer',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: false,
//         leading: IconButton(
//           icon: Icon(Icons.menu, color: Colors.black),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             icon: CircleAvatar(
//               backgroundImage: AssetImage('images/Sana.jpeg'),
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Icon(Icons.location_on, color: Colors.redAccent),
//                   SizedBox(width: 8),
//                   Text(
//                     'Paris, France',
//                     style: TextStyle(
//                       color: Colors.black54,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Delicious Food?\nGo Ahead...',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search for your favourite food',
//                   prefixIcon: Icon(Icons.search),
//                   suffixIcon: Icon(Icons.tune),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                   filled: true,
//                   fillColor: Colors.grey[200],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Container(
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.redAccent,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Center(
//                   child: Text(
//                     '30% Off on your first purchase',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               GridView.count(
//                 crossAxisCount: 3,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 children: [
//                   buildCategoryItem(
//                       context,
//                       'Burger',
//                       'assets/images/Burger.png',
//                       '/burger'
//                   ),
//                   buildCategoryItem(
//                       context,
//                       'Pizza',
//                       'assets/images/Pizza11.png',
//                       '/pizza'
//                   ),
//                   buildCategoryItem(
//                       context,
//                       'Favorites',
//                       'assets/images/Favorites.png',
//                       '/favorites'
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.redAccent,
//         unselectedItemColor: Colors.black54,
//         onTap: (index) {
//           switch (index) {
//             case 0:
//               Navigator.pushNamed(context, '/');
//               break;
//             case 1:
//               Navigator.pushNamed(context, '/favorites');
//               break;
//           }
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildCategoryItem(BuildContext context, String title, String imagePath, String route) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, route);
//       },
//       child: Column(
//         children: [
//           Container(
//             height: 80,
//             width: 80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               color: Colors.grey[200],
//               image: DecorationImage(
//                 image: AssetImage(imagePath),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(height: 8),
//           Text(
//             title,
//             style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class FavoritesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favorites'),
//       ),
//       body: Center(
//         child: Text('Your favorite items will appear here.'),
//       ),
//     );
//   }
// }
//
// class BurgerPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Burger'),
//       ),
//       body: Center(
//         child: Text('Welcome to the Burger Page!'),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class BurgersPage extends StatefulWidget {
  @override
  _BurgersPageState createState() => _BurgersPageState();
}

class _BurgersPageState extends State<BurgersPage> {
  int quantity = 1;

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
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Text(
              'Burgers',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {
                // Cart functionality here
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Menu Tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTabItem('All Items', true),
                  buildTabItem('New Items', false),
                  buildTabItem('Recommended', false),
                  buildTabItem('Special', false),
                ],
              ),
              SizedBox(height: 20),
      
              // Main Burger Image
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purpleAccent, width: 3),
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Burger.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
      
              // Burger Name and Description
              Text(
                'Cheese Burger Whopper',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Ham, Cheddar Cheese, Onion, Cornichon, Salad, Tomato',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
      
              // Price Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$8.99',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  // Heart Icon
                  Icon(Icons.favorite_border, color: Colors.red, size: 28),
                ],
              ),
              SizedBox(height: 20),
      
              // Quantity and Add to Cart Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Quantity Control
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (quantity > 1) quantity--;
                            });
                          },
                        ),
                        Text(
                          quantity.toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
      
                  // Add to Cart Button
                  ElevatedButton(
                    onPressed: () {
                      // Add to cart functionality
                    },
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.redAccent,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Add To Cart',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
      
              // Smaller Images on Right
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    buildSmallBurgerImage('assets/images/Burger11.png'),
                    buildSmallBurgerImage('assets/images/Burger22.png'),
                    buildSmallBurgerImage('assets/images/Burger33.png'),
                    buildSmallBurgerImage('assets/images/Burger44.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Menu Tab Item
  Widget buildTabItem(String text, bool isSelected) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: isSelected ? Colors.redAccent : Colors.black54,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  // Small Burger Images
  Widget buildSmallBurgerImage(String path) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


