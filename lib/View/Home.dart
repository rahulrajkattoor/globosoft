import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globosoft/Model/Model.dart';
import 'package:globosoft/Model/Product%20model/customise%20product.dart';
import 'package:globosoft/Model/Product%20model/product%20model.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return GridView.builder(
            itemCount: controller.productList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              final product = controller.productList[index] as ProductElement;
              return ProductCustom(product);
            },
          );
        }
      }),
    );
  }
}
