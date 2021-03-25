import 'package:get/get.dart';

class StaffController extends GetxController {
  final _works = ["保洁", "月嫂", "育婴师"];
  final _nums = ["1", "2", "3"];

  List<String> get works => _works;
  List<String> get nums => _nums;
}
