import 'package:coffe_shop_final/Model/Coffe.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {

  void Function()? function;
  final Widget icon;
  Coffe coffe;

  Tile({super.key,required this.function,required this.coffe,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(12)),
    padding: EdgeInsets.all(24),
    margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
    child: ListTile(
    tileColor: Colors.grey.shade200,
    title: Text(coffe.name),
    leading: Image.asset(coffe.ImagePath),
    subtitle: Text(coffe.price),
    trailing: IconButton(onPressed: function, icon: icon),
        ),
    );

  }
}