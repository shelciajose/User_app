
import 'package:glamgig_user/app/backend/api/api.dart';
import 'package:glamgig_user/app/helper/shared_pref.dart';

class TabsParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  TabsParser(
      {required this.apiService, required this.sharedPreferencesManager});
}
