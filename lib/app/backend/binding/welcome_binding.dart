
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => WelcomeController(parser: Get.find()),
    );
  }
}
