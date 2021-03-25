import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_demo/page/home_page.dart';
import 'package:getx_demo/page/mine_page.dart';

import 'page/news_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      defaultTransition: Transition.fade,
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
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
