import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/binding/demo1/goods_controller.dart';

/// 第一个例子，演示直接使用 Get.put
///
class GoodsPage extends StatelessWidget {
  // Get 实例中实例化控制器,可以使它在整个应用程序中可用
  final GoodsController controller = Get.put(GoodsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("依赖管理1"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: controller.goods.map((item) => Text("$item,")).toList(),
          ),
        ],
      ),
    );
  }
}
