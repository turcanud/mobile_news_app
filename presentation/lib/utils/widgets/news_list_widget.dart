import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_bloc.dart';

import '../../pages/news/bloc/remote/remote_article_state.dart';
import 'news_tile_widget.dart';

class NewsListWidget extends StatefulWidget {
  const NewsListWidget({super.key});

  @override
  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RemoteArticleBloc, RemoteArticleState>(
      builder: (context, state) {
        if (state is RemoteArticleLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state is RemoteArticleError) {
          return Center(child: Icon(Icons.refresh));
        }
        if (state is RemoteArticleReady) {
          return Column(
            children: List.generate(
              state.articles!.length,
              (index) => NewsTileWidget(article: state.articles![index]),
            ),
          );
        }
        return const Center(child: Text('No articles available'));
      },
    );
  }
}
