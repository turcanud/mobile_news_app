import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/news/remote_article_controller.dart';
import 'carousel_card_widget.dart';

class CarouselWidget extends GetView<RemoteArticleController> {
  const CarouselWidget({super.key});

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
    });
  }
}
