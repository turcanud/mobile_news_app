import 'package:common/constants/api_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:data/data_sources/remote/news_api_service.dart';
import 'package:data/errors/failure.dart';
import 'package:data/mapper/articles_mapper.dart';
import 'package:dio/dio.dart';
import 'package:domain/modules/articles/entities/article_entity.dart';
import 'package:domain/modules/articles/repositories/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<Either<Failure, List<ArticleEntity>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        query: 'crime',
        page: '1',
        pageSize: '10',
        apiKey: ApiConstants.apiKey,
      );
      if (httpResponse.status == "ok") {
        final articles = httpResponse.articles!.toEntities();
        return Right(articles);
      } else {
        return Left(ServerFailure(errorMessage: "Server error"));
      }
    } on DioException catch (e) {
      return Left(ServerFailure(errorMessage: e.message.toString()));
    }
  }
}
