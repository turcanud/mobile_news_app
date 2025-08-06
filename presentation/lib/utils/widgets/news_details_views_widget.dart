import 'package:flutter/material.dart';

import 'package:common/helpers/strings_handler.dart';

import '../../core/constants/design_constants.dart';

class NewsDetailsViewsWidget extends StatelessWidget {
  final int views;
  const NewsDetailsViewsWidget({super.key, required this.views});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.visibility,
          color: DesignConstants.kPrimaryColor,
          size: 20.0,
        ),
        const SizedBox(width: 4.0),
        Text(
          StringsHandler.handleNumbers(views),
          style: TextStyle(color: DesignConstants.kDefaultTextColor),
        ),
      ],
    );
  }
}
