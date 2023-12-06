
import 'package:get/get.dart';
import 'package:glamgig_user/app/controller/individual_categories_controller.dart';

class IndividualCategoriesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(
      () => IndividualCategoriesController(parser: Get.find()),
    );
  }
}
