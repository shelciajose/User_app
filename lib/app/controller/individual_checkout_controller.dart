 
import 'package:get/get.dart';
import 'package:glamgig_user/app/backend/models/service_cart_model.dart';
import 'package:glamgig_user/app/backend/parse/individual_checkout_parse.dart';
import 'package:glamgig_user/app/controller/coupon_controller.dart';
import 'package:glamgig_user/app/controller/individual_slot_controller.dart';
import 'package:glamgig_user/app/controller/login_controller.dart';
import 'package:glamgig_user/app/controller/service_cart_controller.dart';
import 'package:glamgig_user/app/helper/router.dart';
import 'package:glamgig_user/app/util/constant.dart';

class IndividualCheckoutController extends GetxController
    implements GetxService {
  final IndividualCheckoutParser parser;

  bool isChecked = false;

  ServiceCartModel _savedInCart = ServiceCartModel();
  ServiceCartModel get savedInCart => _savedInCart;

  String currencySide = AppConstants.defaultCurrencySide;
  String currencySymbol = AppConstants.defaultCurrencySymbol;
  IndividualCheckoutController({required this.parser});

  @override
  void onInit() {
    currencySide = parser.getCurrencySide();
    currencySymbol = parser.getCurrencySymbol();
    _savedInCart = Get.find<ServiceCartController>().savedInCart;
    super.onInit();
  }

  void onCoupon() {
    Get.delete<CouponController>(force: true);
    Get.toNamed(AppRouter.getCouponRoutes());
  }

  void onSlot() {
    if (parser.isLogin() == true) {
      Get.delete<IndividualSlotController>(force: true);
      Get.toNamed(AppRouter.getIndividualSlot());
    } else {
      Get.delete<LoginController>(force: true);
      Get.toNamed(AppRouter.getLoginRoute());
    }
  }

  void deleteServiceFromCart(int index) {
    Get.find<ServiceCartController>()
        .removeServiceFromCart(_savedInCart.services![index].id as int);
    _savedInCart = Get.find<ServiceCartController>().savedInCart;
    update();
  }

  void deletePackageFromCart(int index) {
    Get.find<ServiceCartController>()
        .removePackageFromCart(_savedInCart.packages![index].id as int);
    _savedInCart = Get.find<ServiceCartController>().savedInCart;
    update();
  }
}
