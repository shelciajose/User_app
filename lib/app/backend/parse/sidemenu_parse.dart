 
import 'package:glamgig_user/app/backend/api/api.dart';
import 'package:glamgig_user/app/helper/shared_pref.dart';

class SideMenuParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  SideMenuParser(
      {required this.apiService, required this.sharedPreferencesManager});
}
