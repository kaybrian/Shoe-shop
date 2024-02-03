import 'package:flutter/material.dart';
import 'package:shoeshop/models/shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes we have in the shop

  List<Shoe> shoeShop = [
    Shoe(
      name: "Adidas",
      imagePath: "images/shoe2.jpg",
      price: "200",
      description: "Adidas shoe",
    ),
    Shoe(
      name: "Jordans",
      imagePath: "images/shoe3.jpg",
      price: "300",
      description: "Jordans shoe",
    ),
    Shoe(
      name: "Nike",
      imagePath: "images/shoe4.jpg",
      price: "250",
      description: "Nike shoe",
    ),
    Shoe(
      name: "canvas",
      imagePath: "images/shoe5.jpg",
      price: "100",
      description: "canvas",
    ),
  ];


  // list of items in a users cart
  List<Shoe> userItems = [];

  // get hte list of shoes for sale
  List<Shoe> saleShoeList() {
    return shoeShop;
  }

  // get user cart items
  List<Shoe> userCartItems() {
    return userItems;
  }

  // add items to the cart
  void addToCart(Shoe shoe) {
    userItems.add(shoe);
    notifyListeners();
  }

  // remove items from the cart
  void removeFromCart(Shoe shoe) {
    userItems.remove(shoe);
    notifyListeners();
  }

}
