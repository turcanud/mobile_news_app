import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/widgets/carousel_widget.dart';
import '../../utils/widgets/header_section_widget.dart';
import '../../utils/widgets/news_list_widget.dart';
import 'bloc/remote/remote_article_bloc.dart';
import 'bloc/remote/remote_article_event.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      _onEndReached();
    }
  }

  void _onEndReached() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircularProgressIndicator(strokeWidth: 6.0),
                  SizedBox(height: 16.0),
                  Text(
                    "Loading more articles...",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    context.read<RemoteArticleBloc>().add(GetMoreArticlesEvent());
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) Navigator.of(context, rootNavigator: true).pop();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
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
