import 'package:flutter/material.dart';

import '../../core/constants/colors_constants.dart';
import 'news_details_author_and_date_widget.dart';

class NewsDetailsAuthorInfoWidget extends StatelessWidget {
  final String author;
  final String authorImage;
  final String postedDate;
  const NewsDetailsAuthorInfoWidget({
    super.key,
    required this.author,
    required this.authorImage,
    required this.postedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NewsDetailsAuthorAndDateWidget(
          author: author,
          authorImage: authorImage,
          postedDate: postedDate,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsConstants.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 18.0),
          ),
          child: Row(
            children: [
              Icon(Icons.add, color: Colors.white, size: 19.0),
              const SizedBox(width: 4.0),
              Text(
                "Follow",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
