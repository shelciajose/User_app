
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/coupon_controller.dart';

class CouponBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => CouponController(parser: Get.find()),
    );
  }
}
