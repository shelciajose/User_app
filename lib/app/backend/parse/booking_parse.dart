
import 'package:glamgig_user/app/backend/api/api.dart';
import 'package:glamgig_user/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_user/app/util/constant.dart';

class BookingParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  BookingParser(
      {required this.apiService, required this.sharedPreferencesManager});

  Future<Response> getAppointmentById() async {
    return await apiService.postPrivate(
        AppConstants.getAppoimentById,
        {'id': sharedPreferencesManager.getString('uid')},
        sharedPreferencesManager.getString('token') ?? '');
  }

  void saveUID(String id) {
    sharedPreferencesManager.putString('uid', id);
  }

  bool haveLoggedIn() {
    return sharedPreferencesManager.getString('uid') != '' &&
            sharedPreferencesManager.getString('uid') != null
        ? true
        : false;
  }

  String getCurrencyCode() {
    return sharedPreferencesManager.getString('currencyCode') ??
        AppConstants.defaultCurrencyCode;
  }

  String getCurrencySide() {
    return sharedPreferencesManager.getString('currencySide') ??
        AppConstants.defaultCurrencySide;
  }

  String getCurrencySymbol() {
    return sharedPreferencesManager.getString('currencySymbol') ??
        AppConstants.defaultCurrencySymbol;
  }
}
