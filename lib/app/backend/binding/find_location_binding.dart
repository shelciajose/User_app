
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/find_location_controller.dart';

class FindLocationBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => FindLocationController(parser: Get.find()),
    );
  }
}
