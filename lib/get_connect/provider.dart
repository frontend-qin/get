import 'dart:convert';

import 'package:get/get.dart';

import 'model.dart';

const String APIADDRESS =
    'https://makeup-api.herokuapp.com/api/v1/products.json/';
// class HomeProvider extends GetConnect {
//   @override
//   void onInit() {
//     // 这个是json转model的, 可以这么写
//     // httpClient.defaultDecoder = (json) => MakeupModel.fromJson(json);

//     // 也可以这么写
//     httpClient.defaultDecoder = MakeupModel.fromJson;

//     // 创建公共接口地址
//     httpClient.baseUrl = APIADDRESS;
//   }

//   // 获取接口数据源
//   Future<Response<List<MakeupModel>>> getMakeupModel() async =>
//       await get('?brand=maybelline');
// }
class BaseConnect extends GetConnect {
  @override
  void onInit() {
    // 创建公共接口地址
    httpClient.baseUrl = APIADDRESS;

    // 请求拦截
    httpClient.addRequestModifier((request) {
      request.headers["token"] = "token";
      return request;
    });

    // 响应拦截
    httpClient.addResponseModifier((request, response) {
      // 处理逻辑
      return response;
    });
  }
}

class HomeProvider extends BaseConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = MakeupModel.fromJson;
    super.onInit();
  }

  Future<Response<List<MakeupModel>>> getMakeupModel() async =>
      await get('?brand=maybelline');
}
