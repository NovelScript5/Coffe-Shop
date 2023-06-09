import 'package:coffe_shop_final/Components/Tile.dart';
import 'package:coffe_shop_final/Model/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/Coffe.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {

  void AddtoCart(Coffe coffe){

  Provider.of<CoffeShop>(context,listen: false).AddtoCart(coffe);

  showDialog(context: context, builder: (context) {

  Future.delayed(Duration(seconds: 1), () => Navigator.pop(context));

  return AlertDialog(title: Text("Added to Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.brown),),);

  });

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(builder: (context,value,child) => Column(children: [

    SizedBox(height: 64,),
    Center(child: Text("Choose Coffe",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.brown),),),
    Expanded(child: ListView.builder(
    itemCount: value.coffeShop.length,
    itemBuilder: (context,index) {

    Coffe eachCoffe = value.coffeShop[index];

    return Tile(function:() => AddtoCart(eachCoffe), coffe: eachCoffe, icon: Icon(Icons.add,color: Colors.brown,));

    }))
    ],));
  }
}