import 'package:flutter/material.dart';

import '../../core/constants/design_constants.dart';

class HeaderSectionWidget extends StatelessWidget {
  final String title;
  final bool openSection;
  const HeaderSectionWidget({
    super.key,
    required this.title,
    this.openSection = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: DesignConstants.kDefaultTextColor,
          ),
        ),
        const Spacer(),
        if (openSection)
          TextButton(
            onPressed: () {},
            child: Text(
              "See All",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: DesignConstants.kPrimaryColor,
              ),
            ),
          ),
      ],
    );
  }
}
