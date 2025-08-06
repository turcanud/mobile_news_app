import 'package:flutter/material.dart';
import 'package:presentation/core/constants/colors_constants.dart';

import 'news_tile_info_author_widget.dart';
import 'news_tile_info_category_widget.dart';
import 'news_tile_info_comments_widget.dart';
import 'news_tile_info_likes_widget.dart';

class NewsTileInfoWidget extends StatelessWidget {
  final String title;
  final String author;
  final String profileImagePath;
  final String category;
  final int likes;
  final int comments;
  const NewsTileInfoWidget({
    super.key,
    required this.title,
    required this.author,
    required this.profileImagePath,
    required this.category,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: ColorsConstants.kDefaultTextColor,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              child: Row(
                children: [
                  NewsTileInfoAuthorWidget(
                    profileImagePath: profileImagePath,
                    author: author,
                  ),
                  const SizedBox(width: 8.0),
                  NewsTileInfoCategoryWidget(category: category),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    NewsTileInfoLikesWidget(likes: likes),
                    const SizedBox(width: 10.0),
                    NewsTileInfoCommentsWidget(comments: comments),
                  ],
                ),
                Icon(
                  Icons.bookmark_outline_outlined,
                  color: ColorsConstants.kPrimaryColor,
                  size: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
