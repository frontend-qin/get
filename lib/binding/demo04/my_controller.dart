import 'package:get/get.dart';

class MyController extends GetxController {
  final _works = ["保洁", "月嫂", "育婴师"];
  final _nums = ["1", "2", "3"];
  final String _title = 'My Awesome View';
  List<String> get works => _works;
  String get title => _title;
  List<String> get nums => _nums;
}
