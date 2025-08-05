import 'package:common/errors/failure.dart';
import 'package:common/params.dart';
import 'package:common/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/modules/articles/repositories/article_repository.dart';

import '../entities/index/index.dart';

class GetArticleUsecase
    extends UseCase<Either<Failure, List<ArticleEntity>>, GetArticleParams> {
  final ArticleRepository _articleRepository;

  GetArticleUsecase(this._articleRepository);

  @override
  Future<Either<Failure, List<ArticleEntity>>> call({
    required GetArticleParams params,
  }) {
    return _articleRepository.getNewsArticles(params: params!);
  }
}
