
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/add_card_controller.dart';

class AddCardBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => AddCardController(parser: Get.find()),
    );
  }
}
