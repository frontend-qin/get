import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/binding/demo03/staff_page.dart';
import 'package:getx_demo/binding/demo2/list_page.dart';

import 'binding/demo1/goods_page.dart';
import 'router/home_page.dart';
import 'router/mine_page.dart';
import 'router/news_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      defaultTransition: Transition.fade,
      initialRoute: "/binding3",
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/binding1', page: () => GoodsPage()),
        GetPage(name: '/binding2', page: () => ListPage()),
        GetPage(name: '/binding3', page: () => StaffPage()),
        GetPage(name: "/mine/:id", page: () => MinePage()),
        GetPage(name: "/news", page: () => NewsPage()),
        GetPage(
          name: '/mine',
          page: () => MinePage(),
          transition: Transition.zoom,
        ),
      ],
      routingCallback: (Routing route) {
        print(route.current);
        print("=========================");
        print(route.previous);
      },
    ),
  );
}
