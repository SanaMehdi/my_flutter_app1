import 'package:flutter/material.dart';

class PizzaPage extends StatelessWidget {
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
          title: Text(
            'Pizza',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '/cart'); // Navigate to the cart page
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTabItem('All Items', isActive: true),
                  _buildTabItem('New Items'),
                  _buildTabItem('Recommended'),
                  _buildTabItem('Special'),
                ],
              ),
              SizedBox(height: 20),
              // Pizza Image and Thumbnails
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/details', arguments: {
                          'name': 'Margarita Pepperoni Pizza',
                          'price': '\$12.99',
                          'description':
                          'Bread, Pepperoni, Cheese, Parsil',
                          'image': 'assets/images/Pizzas.png',
                        });
                      },
                      child: Image.asset(
                        'assets/images/Pizzas.png',
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      _buildThumbnail('assets/images/Pizza11.png'),
                      SizedBox(height: 10),
                      _buildThumbnail('assets/images/Pizza22.png'),
                      SizedBox(height: 10),
                      _buildThumbnail('assets/images/Pizza33.png'),
                      SizedBox(height: 10),
                      _buildThumbnail('assets/images/Pizza44.png'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Description and Price
              Text(
                'Margarita Pepperoni Pizza',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Bread, Pepperoni, Cheese, Parsil',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '\$12.99',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              // Quantity Selector and Add to Cart
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove, color: Colors.black),
                          onPressed: () {},
                        ),
                        Text(
                          '1',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                          icon: Icon(Icons.add, color: Colors.black),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cart'); // Navigate to cart
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                       // primary: Colors.pinkAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Add To Cart',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(String text, {bool isActive = false}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: isActive ? Colors.redAccent : Colors.black54,
        decoration: isActive ? TextDecoration.underline : null,
      ),
    );
  }

  Widget _buildThumbnail(String imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imageUrl, // Use asset image
        height: 60,
        width: 60,
        fit: BoxFit.cover,
      ),
    );
  }
}
