import 'package:flutter/material.dart';

import '../../core/constants/design_constants.dart';

class NewsDetailsContentWidget extends StatelessWidget {
  final String content;
  const NewsDetailsContentWidget({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontSize: 14.0,
        color: DesignConstants.kDefaultTextColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
