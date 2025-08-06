import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/news/remote_article_controller.dart';
import 'news_tile_widget.dart';

class NewsListWidget extends GetView<RemoteArticleController> {
  const NewsListWidget({super.key});

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
      return Column(
        children: List.generate(
          controller.articles.length,
          (index) => NewsTileWidget(article: controller.articles[index]),
        ),
      );
    });
  }
}
