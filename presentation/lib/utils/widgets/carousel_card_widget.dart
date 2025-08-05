import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/modules/articles/entities/article_entity.dart';
import 'package:flutter/material.dart';

import '../../core/constants/design_constants.dart';
import '../../pages/news_details/news_details_page.dart';

class CarouselCardWidget extends StatelessWidget {
  final ArticleEntity article;
  const CarouselCardWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailsPage(article: article),
          ),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
              child: CachedNetworkImage(
                imageUrl: article.urlToImage!,
                fit: BoxFit.cover,
                width: 350.0,
                height: double.infinity,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    LinearProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(24.0)),
              child: Container(
                width: 350.0,
                height: double.infinity,
                color: Color.fromARGB(100, 0, 0, 0),
              ),
            ),
            Positioned(
              bottom: 65.0,
              left: 15.0,
              right: 15.0,
              child: Text(
                article.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            Positioned(
              bottom: 15.0,
              left: 15.0,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsDetailsPage(article: article),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: DesignConstants.kPrimaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                child: Text(
                  'Read Now',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
