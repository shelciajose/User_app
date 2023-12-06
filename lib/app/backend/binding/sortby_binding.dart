 
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/sortby_controller.dart';

class SortByBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => SortByController(parser: Get.find()),
    );
  }
}
