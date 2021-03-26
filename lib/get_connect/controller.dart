import 'package:get/get.dart';

import 'model.dart';
import 'provider.dart';

/// 创建controller
class HomeController extends GetxController with StateMixin<List<MakeupModel>> {
  // 获取实例
  final provider = Get.find<HomeProvider>();

  @override
  void onInit() {
    // 调用
    fetchList();
    super.onInit();
  }

  // 处理接口返回的数据
  Future<void> fetchList() async {
    // 获取数据
    final Response res = await provider.getMakeupModel();

    // 判断，如果有错误
    if (res.hasError) {
      // 改变数据，传入错误状态，在ui中会处理这些错误
      change(null, status: RxStatus.error(res.statusText));
    } else {
      // 否则，存储数据，改变状态为成功
      change(res.body, status: RxStatus.success());
    }
  }
}
