
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/selected_services_controller.dart';

class SelectedServicesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => SelectedServicesController(parser: Get.find()),
    );
  }
}
