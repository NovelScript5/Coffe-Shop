import 'package:coffe_shop_final/Components/BNB.dart';
import 'package:coffe_shop_final/Pages/CartPage.dart';
import 'package:coffe_shop_final/Pages/ShoppingPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int SelectedIndex = 0;
  void ChangePage(int index) {

  setState(() {
  SelectedIndex = index;
  });
  }

  List<Widget> Pages = [

  ShoppingPage(),
  CartPage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey.shade300,
    bottomNavigationBar: MyBNB(onEvent: (index) =>  ChangePage(index)),
    body: Pages[SelectedIndex],
    );
  }
}