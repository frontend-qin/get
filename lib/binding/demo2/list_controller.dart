import 'package:get/get.dart';

class ListController extends GetxController {
  final _animals = ["黑猫", "抱狗", "小驴"];

  List<String> get lists => _animals;
}
