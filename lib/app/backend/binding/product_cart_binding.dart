 
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/product_cart_controller.dart';

class ProductCartBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => ProductCartController(parser: Get.find()),
    );
  }
}
