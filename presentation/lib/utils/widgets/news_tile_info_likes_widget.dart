import 'package:common/helpers/strings_handler.dart';
import 'package:flutter/material.dart';

import '../../core/constants/design_constants.dart';

class NewsTileInfoLikesWidget extends StatelessWidget {
  final int likes;
  const NewsTileInfoLikesWidget({super.key, required this.likes});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.thumb_up, color: DesignConstants.kPrimaryColor, size: 20.0),
        const SizedBox(width: 4.0),
        Text(
          StringsHandler.handleNumbers(likes),
          style: TextStyle(color: DesignConstants.kDefaultTextColor),
        ),
      ],
    );
  }
}
