import 'package:get/get.dart';

import 'package:di/init_di.dart';

import '../remote_article_controller.dart';

class RemoteArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => serviceLocator<RemoteArticleController>());
  }
}
