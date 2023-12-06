
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glamgig_user/app/backend/models/service_cart_model.dart';
import 'package:glamgig_user/app/backend/parse/checkout_parse.dart';
import 'package:glamgig_user/app/controller/coupon_controller.dart';
import 'package:glamgig_user/app/controller/login_controller.dart';
import 'package:glamgig_user/app/controller/service_cart_controller.dart';
import 'package:glamgig_user/app/controller/slot_controller.dart';
import 'package:glamgig_user/app/helper/router.dart';
import 'package:glamgig_user/app/util/constant.dart';

class CheckoutController extends GetxController implements GetxService {
  final CheckoutParser parser;

  bool isChecked = false;

  ServiceCartModel _savedInCart = ServiceCartModel();
  ServiceCartModel get savedInCart => _savedInCart;

  String currencySide = AppConstants.defaultCurrencySide;
  String currencySymbol = AppConstants.defaultCurrencySymbol;

  CheckoutController({required this.parser});

  @override
  void onInit() {
    _savedInCart = Get.find<ServiceCartController>().savedInCart;
    super.onInit();
  }

  void onCoupon() {
    Get.delete<CouponController>(force: true);
    Get.toNamed(AppRouter.getCouponRoutes());
  }

  void onSlot() {
    if (parser.isLogin() == true) {
      Get.delete<SlotController>(force: true);
      Get.toNamed(AppRouter.getSlotRoutes());
    } else {
      Get.delete<LoginController>(force: true);
      Get.toNamed(AppRouter.getLoginRoute());
    }
    currencySide = parser.getCurrencySide();
    currencySymbol = parser.getCurrencySymbol();
  }

  void deleteServiceFromCart(int index) {
    Get.find<ServiceCartController>()
        .removeServiceFromCart(_savedInCart.services![index].id as int);
    _savedInCart = Get.find<ServiceCartController>().savedInCart;
    update();
    checkCartItems();
  }

  void deletePackageFromCart(int index) {
    Get.find<ServiceCartController>()
        .removePackageFromCart(_savedInCart.packages![index].id as int);
    _savedInCart = Get.find<ServiceCartController>().savedInCart;
    update();
    checkCartItems();
  }

  void checkCartItems() {
    if (Get.find<ServiceCartController>().savedInCart.services!.isEmpty &&
        Get.find<ServiceCartController>().savedInCart.packages!.isEmpty) {
      var context = Get.context as BuildContext;
      Navigator.of(context).pop(true);
    }
  }
}
