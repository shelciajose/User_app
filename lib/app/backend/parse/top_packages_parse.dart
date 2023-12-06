
import 'package:glamgig_user/app/backend/api/api.dart';
import 'package:glamgig_user/app/helper/shared_pref.dart';

class TopPackagesParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  TopPackagesParser(
      {required this.apiService, required this.sharedPreferencesManager});
}
