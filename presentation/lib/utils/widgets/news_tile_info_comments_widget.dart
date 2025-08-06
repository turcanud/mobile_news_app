import 'package:flutter/material.dart';

import 'package:common/helpers/strings_handler.dart';

import '../../core/constants/design_constants.dart';

class NewsTileInfoCommentsWidget extends StatelessWidget {
  final int comments;
  const NewsTileInfoCommentsWidget({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.comment_sharp,
          color: DesignConstants.kPrimaryColor,
          size: 20.0,
        ),
        const SizedBox(width: 4.0),
        Text(
          StringsHandler.handleNumbers(comments),
          style: TextStyle(color: DesignConstants.kDefaultTextColor),
        ),
      ],
    );
  }
}
