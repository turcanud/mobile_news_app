import 'package:flutter/material.dart';
import 'package:presentation/core/constants/colors_constants.dart';

class NewsDetailsContentWidget extends StatelessWidget {
  final String content;
  const NewsDetailsContentWidget({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content + content + content,
      style: TextStyle(
        fontSize: 14.0,
        color: ColorsConstants.kDefaultTextColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
