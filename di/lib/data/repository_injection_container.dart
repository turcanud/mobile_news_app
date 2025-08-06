import 'package:data/modules/articles/sources/remote/remote_news_api_service.dart';
import 'package:get_it/get_it.dart';

import 'package:data/modules/articles/article_repository_impl.dart';
import 'package:domain/modules/articles/repositories/article_repository.dart';

Future<void> repositoryInjectionContainer() async {
  final sl = GetIt.instance;

  sl.registerLazySingleton<ArticleRepository>(
    () => ArticleRepositoryImpl(sl<RemoteNewsApiService>()),
  );
}
