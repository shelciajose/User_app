
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/payment_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => PaymentController(parser: Get.find()),
    );
  }
}
