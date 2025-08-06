import 'package:flutter/material.dart';

import 'package:common/constants/api_constants.dart';
import 'package:domain/modules/articles/entities/index/index.dart';
import 'package:presentation/core/constants/images_constants.dart';

import '../../pages/news_details/news_details_page.dart';
import 'news_tile_image_widget.dart';
import 'news_tile_info_widget.dart';

class NewsTileWidget extends StatelessWidget {
  final ArticleEntity article;
  const NewsTileWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NewsDetailsPage(article: article),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 1.5)],
        ),
        height: 166.0,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: NewsTileImageWidget(
                imageUrl: article.urlToImage ?? "https://placehold.co/600x400",
              ),
            ),
            Expanded(
              flex: 3,
              child: NewsTileInfoWidget(
                title: article.title!,
                author: article.source!.name!,
                profileImagePath: ImagesConstants.kDefaultProfileImage,
                category: ApiConstants.query,
                likes: 10000,
                comments: 1000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
