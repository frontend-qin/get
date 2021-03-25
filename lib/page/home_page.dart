import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_demo/page/home_controller.dart';
import 'package:getx_demo/page/mine_page.dart';

class HomePage extends StatelessWidget {
  // 实例化控制器
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
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
            Text("home-page"),
            MaterialButton(
              onPressed: () {
                Get.to(MinePage());
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("直接跳转"),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed("/mine");
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("命名路由跳转"),
            ),
            MaterialButton(
              onPressed: () {
                Get.off(MinePage());
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Get.off跳转"),
            ),
            MaterialButton(
              onPressed: () {
                Get.to(MinePage(), arguments: '我是参数');
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("跳转传参"),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed('/mine?name=李四');
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("命名路由传参"),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed("/mine/123123");
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("命名路由动态传参"),
            ),
            MaterialButton(
              onPressed: () async {
                var data = await Get.to(MinePage());
                print(data);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("await Get.to"),
            ),
            MaterialButton(
              onPressed: () {
                Get.offNamed("/news");
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Get.offName跳转"),
            ),
            MaterialButton(
              onPressed: () {
                Get.snackbar(
                  "提示", // title
                  "我是提示的信息", // message
                  icon: Icon(Icons.home), // 头部的图标
                  shouldIconPulse: true,
                  barBlur: 10,
                  colorText: Colors.white, // 字体颜色
                  isDismissible: true,
                  snackPosition: SnackPosition.BOTTOM, // 显示的位置
                  duration: Duration(seconds: 3), // 显示时长
                  titleText: Text("自定义标题"), // 会覆盖掉 第一个 title的参数的效果
                  messageText: Text("自定义提示语"), // 会覆盖掉 第二个 message的参数的效果
                  maxWidth: 200.2, // 提示框的最大宽度
                  margin: EdgeInsets.all(100), // 提示框距离四周的距离
                  padding: EdgeInsets.all(10), // 提示框的内边距
                  borderRadius: 20.2, // 提示框四周的圆角
                  borderColor: Colors.red, // 提示框边框的颜色，必须和borderWidth一块用，单独使用会报错
                  borderWidth: 2.2, // 提示框边框大小
                  backgroundColor: Colors.black54, // 背景色
                  // 添加阴影效果
                  onTap: (GetBar<Object> a) {
                    print(a);
                  }, // 提示框点击回调
                );
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text("snackbar"),
            ),
            MaterialButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "您确定要这样吗", // 弹窗的标题
                  titleStyle: TextStyle(color: Colors.blue), // 弹窗的标题的样式
                  onConfirm: () => Get.back(), // 确定回调
                  onCancel: () => Get.back(), // 取消的回调
                  confirmTextColor: Colors.purple, // 确定按钮的回调字体颜色
                  cancelTextColor: Colors.red, // 取消的回调字体颜色
                  textConfirm: "确定", // 确定按钮 文字
                  textCancel: "取消", // 取消按钮 文字
                  confirm: Text("自定义确定按钮"), // 自定义确定按钮, 需要自己写关闭函数，比较灵活
                  cancel: MaterialButton(
                    onPressed: Get.back,
                    color: Colors.blue,
                    child: Text("自定义取消按钮"),
                  ), // 自定义取消按钮
                  middleTextStyle: TextStyle(
                    color: Colors.blue,
                  ), // 中间的提示语的样式，自定义content参数时无效
                  middleText: "Dialog made in 3 lines of code", // 中间的提示语
                  backgroundColor: Colors.greenAccent, // 整个背景色
                  buttonColor: Colors.red, // 确定按钮的背景色，自定义按钮时无效
                  radius: 5, // 弹窗的圆角效果
                  actions: [
                    Icon(Icons.ac_unit),
                    Icon(Icons.ac_unit),
                    Icon(Icons.ac_unit),
                    Icon(Icons.ac_unit),
                  ], // 同appBar上action 效果一样
                  content:
                      Text("我是自定义中间显示的widget"), // 自定义中间显示的UI，会覆盖掉middleText的效果
                );
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text("打开默认的Dialogs"),
            ),
            MaterialButton(
              onPressed: () {
                Get.dialog(Column(
                  children: [
                    Container(
                      child: Text(
                        "我是文字",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ),
                    Container(
                      child: Text(
                        "我是文字",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ),
                  ],
                ));
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text("打开自定义的Dialogs"),
            ),
            // MaterialButton(
            //   onPressed: () {
            //     Get.generalDialog(
            //       pageBuilder: (BuildContext context,
            //           Animation<double> animation,
            //           Animation<double> secondaryAnimation) {
            //         return Container(
            //           width: 100,
            //           height: 200,
            //           color: Colors.red,
            //         );
            //       },
            //     );
            //   },
            //   color: Colors.red,
            //   textColor: Colors.white,
            //   child: Text("generalDialog"),
            // ),
            MaterialButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                            leading: Icon(Icons.music_note),
                            title: Text('Music'),
                            onTap: () {
                              Get.back();
                            }),
                        ListTile(
                          leading: Icon(Icons.videocam),
                          title: Text('Video'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.green, // 底部bottomSheet的背景色
                  elevation: 10.0,
                );
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text("bottomSheet"),
            ),
          ],
        ),
      ),
    );
  }
}
