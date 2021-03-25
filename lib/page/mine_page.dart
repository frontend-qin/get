import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_demo/page/home_controller.dart';

class MinePage extends StatelessWidget {
  // 实例化控制器
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    // String name = Get.parameters['name'];

    // print("参数：$name");
    return Scaffold(
      appBar: AppBar(
        title: Text("路由管理"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("mine-page"),
            MaterialButton(
              onPressed: () {
                Get.back(result: 456);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("返回上个页面"),
            ),
          ],
        ),
      ),
    );
  }
}
