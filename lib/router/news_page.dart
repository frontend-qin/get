import 'package:flutter/material.dart';

import 'home_controller.dart';

class NewsPage extends StatelessWidget {
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
            Text("news-page"),
          ],
        ),
      ),
    );
  }
}
