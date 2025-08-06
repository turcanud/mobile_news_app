import 'package:flutter/material.dart';
import 'package:presentation/core/constants/colors_constants.dart';

class NewsTileInfoCategoryWidget extends StatelessWidget {
  final String category;
  const NewsTileInfoCategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        minimumSize: Size.zero,
        side: BorderSide(color: ColorsConstants.kPrimaryColor, width: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
      child: Text(
        category,
        style: TextStyle(
          color: ColorsConstants.kPrimaryColor,
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
