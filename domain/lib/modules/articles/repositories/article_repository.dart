import 'package:dartz/dartz.dart';
import 'package:data/errors/failure.dart';
import 'package:domain/modules/articles/entities/article_entity.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<ArticleEntity>>> getNewsArticles();
}
