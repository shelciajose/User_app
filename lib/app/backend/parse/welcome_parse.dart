
import 'package:glamgig_user/app/backend/api/api.dart';
import 'package:glamgig_user/app/helper/shared_pref.dart';

class WelcomeParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  WelcomeParser(
      {required this.apiService, required this.sharedPreferencesManager});
}
