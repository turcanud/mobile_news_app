import 'package:flutter/material.dart';

import '../../utils/widgets/carousel_widget.dart';
import '../../utils/widgets/header_section_widget.dart';
import '../../utils/widgets/news_list_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HeaderSectionWidget(title: "Featured"),
        const SizedBox(height: 8.0),
        CarouselWidget(),
        const SizedBox(height: 8.0),
        HeaderSectionWidget(title: "News"),
        NewsListWidget(),
      ],
    );
  }
}
