
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/service_cart_controller.dart';

class ServiceCartBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => ServiceCartController(parser: Get.find()),
    );
  }
}
