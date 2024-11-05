import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globosoft/Model/Product%20model/product%20model.dart';

class Home extends StatefulWidget {
  final ProductController productController = ProductController();
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView.builder(
          itemCount: product,
            itemBuilder: (context,index){
          return Card(
            child: ListTile(
                title: Text(ProductController.[index].name),
            ),
          );
        }),
      ),
    );
  }
}
