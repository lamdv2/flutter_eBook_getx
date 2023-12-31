import 'package:flutter_getx_base/modules/category/category.dart';
import 'package:get/get.dart';

import 'api/api_provider.dart';
import 'api/api_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get
      ..put(
        ApiProvider(Get.find()),
        permanent: true,
      )
      ..put(
        ApiRepository(),
        permanent: true,
      )
      ..put(
        CategoryController(),
        permanent: true,
      );
  }
}
