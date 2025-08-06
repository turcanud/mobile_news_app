import 'package:flutter/material.dart';

import '../../pages/news/remote_article_controller.dart';
import 'news_tile_widget.dart';

class NewsListWidget extends StatelessWidget {
  final RemoteArticleController controller;
  const NewsListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        controller.articles.length,
        (index) => NewsTileWidget(article: controller.articles[index]),
      ),
    );
  }
}
