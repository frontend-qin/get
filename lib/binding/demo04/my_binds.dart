import 'package:get/get.dart';

import 'my_controller.dart';

// 创建bindings
class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
