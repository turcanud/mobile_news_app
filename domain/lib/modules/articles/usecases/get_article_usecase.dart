import 'package:common/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:data/errors/failure.dart';
import 'package:domain/modules/articles/repositories/article_repository.dart';

import '../entities/article_entity.dart';

class GetArticleUsecase
    extends UseCase<Either<Failure, List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUsecase(this._articleRepository);
  @override
  Future<Either<Failure, List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
