import 'package:domain/modules/articles/entities/index/index.dart';

abstract class RemoteArticleState {
  final List<ArticleEntity>? articles;
  final int? page;
  final String? error;

  const RemoteArticleState({this.articles, this.page = 1, this.error});
}

class RemoteArticleLoading extends RemoteArticleState {
  const RemoteArticleLoading();
}

class RemoteArticleReady extends RemoteArticleState {
  const RemoteArticleReady({
    required List<ArticleEntity> articles,
    required int page,
  }) : super(articles: articles, page: page);
}

class RemoteArticleError extends RemoteArticleState {
  const RemoteArticleError({required String error}) : super(error: error);
}
