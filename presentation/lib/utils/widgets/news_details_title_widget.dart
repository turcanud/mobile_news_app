import 'package:flutter/material.dart';

import '../../core/constants/colors_constants.dart';

class NewsDetailsTitleWidget extends StatelessWidget {
  final String title;
  const NewsDetailsTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.w600,
        color: ColorsConstants.kDefaultTextColor,
      ),
    );
  }
}
