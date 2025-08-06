import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../utils/widgets/carousel_widget.dart';
import '../../utils/widgets/header_section_widget.dart';
import '../../utils/widgets/news_list_widget.dart';
import 'remote_article_controller.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  RemoteArticleController get controller => Get.find();

  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => RemoteArticleController());
  }

  final RefreshController _refreshController = RefreshController(
    initialRefresh: false,
  );

  Future<void> _onLoading() async {
    await controller.getMoreArticles();
    _refreshController.loadComplete();
  }

  Future<void> _onRefresh() async {
    await controller.getArticles();
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.status.value == RemoteArticleStatus.loading) {
        return const Center(
          child: CircularProgressIndicator(color: Colors.black),
        );
      } else if (controller.status.value == RemoteArticleStatus.error) {
        return Center(child: Text(controller.error.value));
      }
      return SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        enablePullUp: true,
        onLoading: _onLoading,
        onRefresh: _onRefresh,
        header: WaterDropMaterialHeader(backgroundColor: Colors.black),
        child: ListView(
          children: <Widget>[
            HeaderSectionWidget(title: "Featured"),
            const SizedBox(height: 8.0),
            CarouselWidget(controller: controller),
            const SizedBox(height: 8.0),
            HeaderSectionWidget(title: "News"),
            NewsListWidget(controller: controller),
          ],
        ),
      );
    });
  }
}
