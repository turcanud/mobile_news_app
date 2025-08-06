import 'package:common/errors/failure.dart';
import 'package:common/params.dart';
import 'package:dartz/dartz.dart';
import 'package:data/mappers/articles_mapper.dart';
import 'package:dio/dio.dart';
import 'package:domain/modules/articles/entities/index/index.dart';
import 'package:domain/modules/articles/repositories/article_repository.dart';

import 'sources/remote/remote_news_api_service.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final RemoteNewsApiService _remoteNewsApiService;
  ArticleRepositoryImpl(this._remoteNewsApiService);

  @override
  Future<Either<Failure, List<ArticleEntity>>> getNewsArticles({
    required GetArticleParams params,
  }) async {
    try {
      final response = await _remoteNewsApiService.getArticlesApi(
        query: params.query,
        page: params.page,
        pageSize: params.pageSize,
        apiKey: params.apiKey,
      );
      final articles = response.articles!.toEntities();
      return Right(articles);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure(errorMessage: e.message.toString()));
      }
      return Left(
        ServerFailure(
          errorMessage: "An unexpected error occurred ${e.toString()}",
        ),
      );
    }
  }
}
