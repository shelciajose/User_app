 
import 'package:get/get.dart';
import 'package:glamgig_user/app/backend/parse/filter_parse.dart';

class FilterController extends GetxController implements GetxService {
  final FilterParser parser;

  FilterController({required this.parser});
}
