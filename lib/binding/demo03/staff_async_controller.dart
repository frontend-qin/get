import 'package:get/state_manager.dart';

class StaffSyncController extends GetxController {
  final Future<List<String>> nums =
      Future.delayed(Duration(seconds: 2), () => ["1", "2", "3"]);
}
