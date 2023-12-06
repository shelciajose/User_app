 
import 'package:glamgig_user/app/backend/api/api.dart';
import 'package:glamgig_user/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_user/app/util/constant.dart';

class AddReviewParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  AddReviewParser(
      {required this.sharedPreferencesManager, required this.apiService});

  String getUID() {
    return sharedPreferencesManager.getString('uid') ?? '';
  }

  Future<Response> getOwnerReviews(var body) async {
    var response = await apiService.postPrivate(AppConstants.getOwnerReviews,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> getProductsReviews(var body) async {
    var response = await apiService.postPrivate(AppConstants.getProductsReview,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> saveOwnerReview(var body) async {
    var response = await apiService.postPrivate(AppConstants.saveOwnerReview,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> saveProductReviews(var body) async {
    var response = await apiService.postPrivate(AppConstants.saveProductReview,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> updateProductReviews(var body) async {
    var response = await apiService.postPrivate(
        AppConstants.updateProductReviews,
        body,
        sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> savePackageReviews(var body) async {
    var response = await apiService.postPrivate(AppConstants.savePackageReview,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> updateOwnerReview(var body) async {
    var response = await apiService.postPrivate(AppConstants.updateOwnerReview,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> getServiceReviews(var body) async {
    var response = await apiService.postPrivate(AppConstants.getServiceReviews,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> saveServiceReviews(var body) async {
    var response = await apiService.postPrivate(AppConstants.saveServiceReview,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }
}
