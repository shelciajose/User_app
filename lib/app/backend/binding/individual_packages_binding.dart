
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/individual_packages_controller.dart';

class IndividualPackagesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => IndividualPackagesController(parser: Get.find()),
    );
  }
}
