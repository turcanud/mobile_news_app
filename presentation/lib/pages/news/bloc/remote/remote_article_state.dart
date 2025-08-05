import 'package:domain/modules/articles/entities/article_entity.dart';

abstract class RemoteArticleState {
  final List<ArticleEntity>? articles;
  final String? error;

  const RemoteArticleState({this.articles, this.error});
}

class RemoteArticleLoading extends RemoteArticleState {
  const RemoteArticleLoading();
}

class RemoteArticleReady extends RemoteArticleState {
  const RemoteArticleReady({required List<ArticleEntity> articles})
    : super(articles: articles);
}

class RemoteArticleError extends RemoteArticleState {
  const RemoteArticleError({required String error}) : super(error: error);
}
