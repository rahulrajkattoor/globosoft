import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:globosoft/Controller/controller.dart';

class ProductController extends GetxController{
  RxBool isLoading=true.obs;
  var ProductList=[].obs;
  @override
  void onInit() {
   loadProduct();
    super.onInit();
  }
  void loadProduct() async{
    try{
      isLoading(true);
      var product= await HttpService.fetchProducts();
      if(product!=null){
        ProductList.value=product as List;
      }
    }finally{
      isLoading(false);
    }
  }
}