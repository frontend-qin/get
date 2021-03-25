import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/binding/demo2/goods_controller.dart';
import 'package:getx_demo/binding/demo2/list_controller.dart';

class ListPage extends StatelessWidget {
  // 直接实例化
  final ListController controller = ListController();

  final GoodsController goodsController = Get.put(GoodsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("依赖管理2"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("渲染ListController的数据"),
          Row(
            children: controller.lists.map((item) => Text("$item, ")).toList(),
          ),
          SizedBox(height: 50),
          Text("渲染GoodsController的数据"),
          Row(
            children:
                goodsController.goods.map((item) => Text("$item,  ")).toList(),
          ),
          SizedBox(height: 50),
          Text("通过Get.find查找GoodsController"),
          Row(
            children: Get.find<GoodsController>()
                .goods
                .map((item) => Text("$item,  "))
                .toList(),
          ),
          SizedBox(height: 50),
          Text("通过Get.find查找ListController"),
          Text("自己打开注释的代码查看效果")
          // Row(
          //   children: Get.find<ListController>()
          //       .lists
          //       .map((item) => Text("$item,  "))
          //       .toList(),
          // )
        ],
      ),
    );
  }
}
