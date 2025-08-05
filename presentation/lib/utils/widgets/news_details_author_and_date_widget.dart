import 'package:flutter/material.dart';

import '../../core/constants/design_constants.dart';

class NewsDetailsAuthorAndDateWidget extends StatelessWidget {
  final String author;
  final String authorImage;
  final String postedDate;
  const NewsDetailsAuthorAndDateWidget({
    super.key,
    required this.author,
    required this.postedDate,
    required this.authorImage,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          CircleAvatar(radius: 18.0, backgroundImage: AssetImage(authorImage)),
          const SizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                author,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                  color: DesignConstants.kPrimaryColor,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                postedDate,
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                  color: DesignConstants.kDefaultTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
