
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/products_controller.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => ProductsController(parser: Get.find()),
    );
  }
}
