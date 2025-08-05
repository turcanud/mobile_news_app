import 'package:common/constants/api_constants.dart';
import 'package:common/errors/failure.dart';
import 'package:common/params.dart';
import 'package:dartz/dartz.dart';

import '../entities/index/index.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<ArticleEntity>>> getNewsArticles({
    required GetArticleParams params,
  });
}
