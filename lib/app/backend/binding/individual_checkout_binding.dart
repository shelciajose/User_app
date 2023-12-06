
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/individual_checkout_controller.dart';

class IndividualCheckoutBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => IndividualCheckoutController(parser: Get.find()),
    );
  }
}
