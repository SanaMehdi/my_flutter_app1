import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final String imageUrl;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
  });
}

class CartController with ChangeNotifier {
  final List<CartItem> _items = [];

  // Getter for cart items
  List<CartItem> get items => _items;

  // Getter for total price
  double get totalPrice {
    return _items.fold(0.0, (sum, item) => sum + (item.price * item.quantity));
  }

  // Add item to cart
  void addItem(CartItem newItem) {
    final index = _items.indexWhere((item) => item.name == newItem.name);
    if (index != -1) {
      _items[index].quantity += 1;
    } else {
      _items.add(newItem);
    }
    notifyListeners();
  }

  // Remove item from cart
  void removeItem(String name) {
    _items.removeWhere((item) => item.name == name);
    notifyListeners();
  }

  // Update item quantity
  void updateQuantity(String name, int newQuantity) {
    final index = _items.indexWhere((item) => item.name == name);
    if (index != -1 && newQuantity > 0) {
      _items[index].quantity = newQuantity;
      notifyListeners();
    }
  }

  // Clear cart
  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
