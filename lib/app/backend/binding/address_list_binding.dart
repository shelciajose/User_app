
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/address_list_controller.dart';

class AddressListBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => AddressListController(parser: Get.find()),
    );
  }
}
