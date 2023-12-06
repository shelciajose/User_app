
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/checkout_controller.dart';

class CheckoutBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => CheckoutController(parser: Get.find()),
    );
  }
}
