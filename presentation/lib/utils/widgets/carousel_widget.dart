import 'package:flutter/material.dart';

import '../../pages/news/remote_article_controller.dart';
import 'carousel_card_widget.dart';

class CarouselWidget extends StatelessWidget {
  final RemoteArticleController controller;
  const CarouselWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 272.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.carouselArticles.length - 5,
        itemBuilder: (context, index) {
          return CarouselCardWidget(
            article: controller.carouselArticles[index],
          );
        },
      ),
    );
  }
}
