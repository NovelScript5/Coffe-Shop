import 'package:flutter/material.dart';

import 'Coffe.dart';

class CoffeShop extends ChangeNotifier {

  // Take Coffe List
  final List<Coffe> Shop = [

  // Black Coffe
  Coffe(name: "Black Coffe", price: "3.90", ImagePath: "Images/BlackCoffe.png"),
  // Espresso
  Coffe(name: "Espresso", price: "4.00", ImagePath: "Images/Espresso.png"),
  // Iced Coffe
  Coffe(name: "Iced Coffe", price: "4.10", ImagePath: "Images/IcedCoffe.png"),
  // Latte
  Coffe(name: "Latte", price: "4.20", ImagePath: "Images/Latte.png")  
  ];

  // usercart
  List<Coffe> UserCart = [];

  // get Coffelist
  List<Coffe> get coffeShop => Shop;

  // get Usercart
  List<Coffe> get userCart => UserCart;

  // AddtoUserCart
  void AddtoCart(Coffe coffe) {

  userCart.add(coffe);
  notifyListeners();
  }


  // DeletefromUserCart
  void DeletefromCart(Coffe coffe) {

  userCart.remove(coffe);
  notifyListeners();

  }
}