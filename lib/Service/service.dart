import 'dart:convert';

import '../Model/Model.dart';
import 'package:http/http.dart' as http;

class ProductService{
  final String Url="https://mansharcart.com/api/products/category/139/key/123456789";
 Future<List<Product>?>fetchProduct()async{
   try{
     final response= await http.get(Uri.parse(Url));

     if(response.statusCode==200){
       List<dynamic>data=jsonDecode(response.body);
       return data.map((json)=>Product.fromJson(json)).toList();
     }else{
       print("failed to load products${response.statusCode}");
     }
   }catch(e){
     print("Error fetching products$e");
     return null;
   }


 }
}
