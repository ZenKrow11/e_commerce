import 'package:e_commerce_tut/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {

  List<Shoe> shoeShop = [
    Shoe(
        name: "Sneaker 1",
        price: "234",
        imagePath: "lib/images/sneaker_1.png",
        description: "Nice Shoe"),

    Shoe(
        name: "Sneaker 2",
        price: "220",
        imagePath: "lib/images/sneaker_2.jpeg",
        description: "Cool Shoe"),

    Shoe(
        name: "Sneaker 3",
        price: "150",
        imagePath: "lib/images/sneaker_3.jpeg",
        description: "Great Shoe"),

    Shoe(
        name: "Sneaker 4",
        price: '175',
        imagePath: "lib/images/sneaker_4.jpeg",
        description: "Sport Shoe"),
  ];

  // list of items in the cart
  List<Shoe> cart = [];

  //get list shoes
  List<Shoe> getShoes() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getCart() {
    return cart;
  }

  //add items to cart
  void addToCart(Shoe shoe) {
    cart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Shoe shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}