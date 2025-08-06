import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:common/constants/api_constants.dart';
import 'package:domain/modules/articles/entities/index/index.dart';

import '../../core/constants/design_constants.dart';
import '../../utils/widgets/news_details_analytics_widget.dart';
import '../../utils/widgets/news_details_author_info_widget.dart';
import '../../utils/widgets/news_details_content_widget.dart';
import '../../utils/widgets/news_details_hashtags_widget.dart';
import '../../utils/widgets/news_details_title_widget.dart';

class NewsDetailsPage extends StatelessWidget {
  final ArticleEntity article;
  const NewsDetailsPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: DesignConstants.kPrimaryColor),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: DesignConstants.kDefaultMargin,
        child: ListView(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(24.0)),
              child: CachedNetworkImage(
                imageUrl: article.urlToImage!,
                height: 280.0,
                fit: BoxFit.cover,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    LinearProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            const SizedBox(height: 16.0),
            NewsDetailsTitleWidget(title: article.title!),
            const SizedBox(height: 8.0),
            NewsDetailsAnalyticsWidget(
              category: ApiConstants.query,
              views: 100000,
              likes: 10000,
              comments: 1000,
            ),
            const SizedBox(height: 12.0),
            NewsDetailsAuthorInfoWidget(
              author: article.source!.name!,
              authorImage: DesignConstants.kDefaultProfileImage,
              postedDate: article.publishedAt!,
            ),
            const SizedBox(height: 15.0),
            NewsDetailsContentWidget(content: article.content!),
            const SizedBox(height: 25.0),
            //Read more link
            TextButton(
              //style for the button
              style: TextButton.styleFrom(
                backgroundColor: DesignConstants.kPrimaryColor,
              ),
              onPressed: () {
                launchUrl(
                  Uri.parse(article.url!),
                  mode: LaunchMode.externalApplication,
                );
              },
              child: Text(
                'Access Full Article',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            NewsDetailsHashtagsWidget(hashtags: ['#${ApiConstants.query}']),
          ],
        ),
      ),
    );
  }
}
