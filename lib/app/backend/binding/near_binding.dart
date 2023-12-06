 
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/near_controller.dart';

class NearBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => NearController(parser: Get.find()),
    );
  }
}
