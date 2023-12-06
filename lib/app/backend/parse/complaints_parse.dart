
import 'package:glamgig_user/app/backend/api/api.dart';
import 'package:glamgig_user/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:glamgig_user/app/util/constant.dart';
import 'package:image_picker/image_picker.dart';

class ComplaintsParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  ComplaintsParser(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getOrderDetails(var id) async {
    return await apiService.postPrivate(AppConstants.getProductOrderInfo,
        {'id': id}, sharedPreferencesManager.getString('token') ?? '');
  }

  Future<Response> getAppointmentById(var body) async {
    var response = await apiService.postPrivate(AppConstants.getAppoimentInfo,
        body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> uploadImage(XFile data) async {
    return await apiService
        .uploadFiles(AppConstants.uploadImage, [MultipartBody('image', data)]);
  }

  Future<Response> registerComplaints(var param) async {
    return await apiService.postPrivate(AppConstants.registerComplaints, param,
        sharedPreferencesManager.getString('token') ?? '');
  }

  String getUID() {
    return sharedPreferencesManager.getString('uid') ?? '';
  }
}
