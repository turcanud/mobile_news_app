import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_bloc.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_state.dart';

import 'carousel_card_widget.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RemoteArticleBloc, RemoteArticleState>(
      builder: (_, state) {
        if (state is RemoteArticleLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state is RemoteArticleError) {
          return Center(child: Icon(Icons.refresh));
        }
        if (state is RemoteArticleReady) {
          return SizedBox(
            height: 272.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.articles!.length,
              itemBuilder: (context, index) {
                return CarouselCardWidget(article: state.articles![index]);
              },
            ),
          );
        }
        return const Center(child: Text('No articles available'));
      },
    );
  }
}
