import 'package:get_it/get_it.dart';

import 'package:domain/modules/articles/usecases/get_article_usecase.dart';
import 'package:domain/modules/articles/repositories/article_repository.dart';

Future<void> usecaseInjectionContainer() async {
  final sl = GetIt.instance;

  sl.registerLazySingleton<GetArticleUsecase>(
    () => GetArticleUsecase(sl<ArticleRepository>()),
  );
}
