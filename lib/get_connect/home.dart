import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'model.dart';

class Home extends GetView<HomeController> {
  const Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make up'),
      ),
      body: controller.obx(
        (state) => ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: context.theme.dividerColor,
          ),
          itemCount: state.length,
          itemBuilder: (context, index) {
            final MakeupModel makeUp = state[index];
            return ListTile(
              onTap: () => null,
              title: Text(makeUp.name),
              trailing: Text("\$${makeUp.price}"),
              leading: MakeUpImage(makeUp: makeUp),
            );
          },
        ),
        onError: (err) {
          return Text("$err");
        },
        onEmpty: Text("没有数据啊，"),
        onLoading: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text(
                "疯狂加载中...",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MakeUpImage extends StatelessWidget {
  const MakeUpImage({
    Key key,
    @required this.makeUp,
  }) : super(key: key);

  final MakeupModel makeUp;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(makeUp.imageLink),
    );
  }
}
