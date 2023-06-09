import 'package:coffe_shop_final/Components/Tile.dart';
import 'package:coffe_shop_final/Model/Coffe.dart';
import 'package:coffe_shop_final/Model/Shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {

  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {

    void DeletefromCart(Coffe coffe) {

    Provider.of<CoffeShop>(context,listen: false).DeletefromCart(coffe);

    showDialog(context: context, builder: (context) {

    Future.delayed(Duration(seconds: 1), () => Navigator.pop(context));

    return AlertDialog(title: Text("Deleted From Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.brown),),);

    });
    }

    void PayNow() {}

    return Consumer<CoffeShop>(builder: (context,value,child) => Column(children: [

    SizedBox(height: 64,),

    Center(child: Text("Your Cart",style: TextStyle(fontSize: 24  ,fontWeight: FontWeight.bold,color: Colors.brown),)),

    Expanded(child: ListView.builder(
    itemCount: value.userCart.length,
    itemBuilder: (context,index) {

    Coffe eachCoffe = value.userCart[index];

    return Tile(function:() => DeletefromCart(eachCoffe), coffe: eachCoffe, icon: Icon(Icons.delete,color: Colors.brown,));

    })),

    GestureDetector(onTap: PayNow,child: Container(margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),width: double.maxFinite,height: 60, decoration: BoxDecoration(color: Colors.brown,borderRadius: BorderRadius.circular(24)),child: Center(child: Text("Pay Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),),)

    ],));
  }
}