import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_demo/binding/demo03/staff_controller.dart';

class StaffPage extends StatelessWidget {
  // 它只有在使用时才会被实例化
  final controller = Get.lazyPut<StaffController>(() => StaffController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("依赖管理3"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("演示tag参数"),
          Row(
            children: Get.find<StaffController>()
                .works
                .map((item) => Text("$item"))
                .toList(),
          )
        ],
      ),
    );
  }
}
