import 'package:flutter/material.dart';
import 'package:presentation/core/constants/colors_constants.dart';

class NewsDetailsHashtagsWidget extends StatelessWidget {
  final List<String> hashtags;
  const NewsDetailsHashtagsWidget({super.key, required this.hashtags});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: hashtags.map((hashtag) {
        return OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: ColorsConstants.kPrimaryColor, width: 1.8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          ),
          child: Text(
            hashtag,
            style: TextStyle(
              color: ColorsConstants.kPrimaryColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      }).toList(),
    );
  }
}
