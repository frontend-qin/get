import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// class User {
//   final name;
//   final age;
//   User({this.name, this.age});
// }

// class Teacher {
//   final name = "李思思".obs;
//   final languer = "语文".obs;
// }

/// 定义数据控制器
class HomeController extends GetxController {
  // 用户名控制器
  TextEditingController userNameController;

  @override
  void onInit() {
    super.onInit();
    userNameController = TextEditingController();
    print("渲染完成");
  }

  @override
  void onClose() {
    super.onClose();
    print("close");
  }
}
