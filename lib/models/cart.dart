import 'package:flutter/material.dart';
import 'package:sneaker_house_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike Air Max",
      description: "Comfortable and stylish running shoes.",
      price: 120.00,
      imageUrl: "lib/images/1.jpeg",
    ),
    Shoe(
      name: "Adidas Ultraboost",
      description: "High-performance running shoes with great cushioning.",
      price: 180.00,
      imageUrl: "lib/images/2.jpeg",
    ),
    Shoe(
      name: "Puma RS-X",
      description: "Retro-inspired sneakers with bold colors.",
      price: 110.00,
      imageUrl: "lib/images/3.jpeg",
    ),
    Shoe(
      name: "Reebok Classic",
      description: "Timeless sneakers with a classic design.",
      price: 90.00,
      imageUrl: "lib/images/4.jpeg",
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getCartList() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
