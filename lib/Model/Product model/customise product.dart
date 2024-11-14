import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globosoft/Model/Model.dart';
class ProductCustom extends StatelessWidget{
  final ProductElement productList;
  ProductCustom( this.productList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children: [
            Text(productList.name,style: TextStyle(color: Colors.black),),
            Text(productList.price),
            Text(productList.quantity)
          ],
        ),

    );
  }

}
