import 'package:get/get.dart';

import '../remote_article_controller.dart';

class RemoteArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoteArticleController());
  }
}
