import 'package:flutter/material.dart';

import 'news_details_views_widget.dart';
import 'news_tile_info_category_widget.dart';
import 'news_tile_info_comments_widget.dart';
import 'news_tile_info_likes_widget.dart';

class NewsDetailsAnalyticsWidget extends StatelessWidget {
  final String category;
  final int views;
  final int likes;
  final int comments;
  const NewsDetailsAnalyticsWidget({
    super.key,
    required this.category,
    required this.views,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NewsTileInfoCategoryWidget(category: category),
                const SizedBox(width: 20.0),
                NewsDetailsViewsWidget(views: views),
                const SizedBox(width: 20.0),
                NewsTileInfoLikesWidget(likes: likes),
                const SizedBox(width: 20.0),
                NewsTileInfoCommentsWidget(comments: comments),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
