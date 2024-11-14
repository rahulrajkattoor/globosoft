import 'package:get/get.dart';
import 'package:globosoft/Model/Model.dart';
import 'package:globosoft/Service/service.dart';

class ProductController extends GetxController {
  RxBool isLoading = true.obs;
  var productList = <Product>[].obs;// Observable list of products
  @override
  void onInit() {
    loadProducts();
    super.onInit();
  }
  void loadProducts() async {
    try {
      isLoading(true); // Set loading to true
      var products = await ProductService().fetchProduct(); // Fetch products from the service
      if (products != null) {
        productList.value = products; // Update productList with fetched products
      }
    } catch (e) {
      print("Error loading products: $e"); // Error handling
    } finally {
      isLoading(false); // Set loading to false once done
    }
  }
}
