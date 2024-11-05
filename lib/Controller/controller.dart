import '../Model/Model.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<Product> fetchProducts() async {
    try {
      var response = await http.get(
          Uri.parse("https://mansharcart.com/api/products/category/139/key/123456789")
      );

      if (response.statusCode == 200) {
        var data = response.body;
        return productFromJson(data);
      } else {
        throw Exception('Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch products: $e');
    }
  }
}
