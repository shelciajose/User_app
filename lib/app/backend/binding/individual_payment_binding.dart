 
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/individual_payment_controller.dart';

class IndividualPaymentBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => IndividualPaymentController(parser: Get.find()),
    );
  }
}
