import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBNB extends StatelessWidget {

  void Function(int)? onEvent;

  MyBNB({super.key,required this.onEvent});

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.symmetric(horizontal: 94),
    child: GNav(
    tabBorderRadius: 24,
    tabActiveBorder: Border.all(width: 3,color: Colors.brown),
    onTabChange: (value) => onEvent!(value),
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    color: Colors.grey.shade400,
    activeColor: Colors.grey.shade700,
    tabs: [
    GButton(icon: Icons.home,iconActiveColor: Colors.brown,text: " Shop",textStyle: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),),
    GButton(icon: Icons.shopping_bag_rounded,iconActiveColor: Colors.brown,text: "  Cart",textStyle: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),)

    ],));
  }
}