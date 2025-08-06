import 'package:flutter/material.dart';

import 'package:common/helpers/strings_handler.dart';

import '../../core/constants/design_constants.dart';

class NewsTileInfoAuthorWidget extends StatelessWidget {
  final String profileImagePath;
  final String author;
  const NewsTileInfoAuthorWidget({
    super.key,
    required this.author,
    required this.profileImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(
            profileImagePath,
            width: 24.0,
            height: 24.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 4.0),
        Text(
          StringsHandler.handleName(author),
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: DesignConstants.kDefaultTextColor,
          ),
        ),
      ],
    );
  }
}
