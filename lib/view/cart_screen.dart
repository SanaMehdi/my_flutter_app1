import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/cart_controller.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<CartController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.redAccent,
      ),
      body: cartController.items.isEmpty
          ? Center(
        child: Text(
          'Your cart is empty',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      )
          : ListView.builder(
        itemCount: cartController.items.length,
        itemBuilder: (context, index) {
          final item = cartController.items[index];
          return ListTile(
            leading: Image.asset(
              item.imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(item.name),
            subtitle: Text('Price: \$${item.price.toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    cartController.updateQuantity(item.name, item.quantity - 1);
                  },
                ),
                Text(item.quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    cartController.updateQuantity(item.name, item.quantity + 1);
                  },
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total: \$${cartController.totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Checkout functionality not implemented')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
