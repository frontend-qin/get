import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/binding/demo04/my_controller.dart';

// class MyPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("依赖管理4"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Text("演示tag参数"),
//           Row(
//             children: Get.find<MyController>()
//                 .works
//                 .map((item) => Text("$item"))
//                 .toList(),
//           )
//         ],
//       ),
//     );
//   }
// }
class MyPage extends GetView<MyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("依赖管理4"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("演示拿到数据"),
          Row(
            children: Get.find<MyController>()
                .works
                .map((item) => Text("$item"))
                .toList(),
          ),
          Text("演示拿到数据:${controller.title}"),
        ],
      ),
    );
  }
}
