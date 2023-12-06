
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/specialist_controller.dart';

class SpecialistBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => SpecialistController(parser: Get.find()),
    );
  }
}
