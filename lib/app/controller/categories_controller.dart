
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:glamgig_user/app/backend/api/handler.dart';
import 'package:glamgig_user/app/backend/models/products_model.dart';
import 'package:glamgig_user/app/backend/parse/categories_parse.dart';
import 'package:glamgig_user/app/controller/cart_controller.dart';
import 'package:glamgig_user/app/controller/products_controller.dart';
import 'package:glamgig_user/app/helper/router.dart';
import 'package:glamgig_user/app/util/constant.dart';

class CategoriesController extends GetxController implements GetxService {
  final CategoriesParser parser;

  String selectedCategory = '';

  List<ProductsModel> _productsList = <ProductsModel>[];
  List<ProductsModel> get productsList => _productsList;

  bool apiCalled = false;

  String currencySide = AppConstants.defaultCurrencySide;
  String currencySymbol = AppConstants.defaultCurrencySymbol;
  CategoriesController({required this.parser});

  @override
  void onInit() {
    super.onInit();
    currencySide = parser.getCurrencySide();
    currencySymbol = parser.getCurrencySymbol();
    getAllCategories();
  }

  void onCategoryExpand(String id) {
    selectedCategory = id;
    update();
  }

  Future<void> getAllCategories() async {
    var response = await parser.getAllCategories();
    apiCalled = true;
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = Map<String, dynamic>.from(response.body);

      var body = myMap['data'];
      _productsList = [];
      body.forEach((data) {
        ProductsModel cateData = ProductsModel.fromJson(data);
        _productsList.add(cateData);
      });
      debugPrint(productsList.length.toString());
    } else {
      ApiChecker.checkApi(response);
    }
    update();
  }

  void onProducts(int cateId, int subCateId) {
    Get.delete<ProductsController>(force: true);
    Get.toNamed(AppRouter.getProductsRoutes(), arguments: [cateId, subCateId]);
  }

  void onCart() {
    Get.delete<CartController>(force: true);
    Get.toNamed(AppRouter.getCartRoutes());
  }

  void updateScreen() {
    update();
  }
}
