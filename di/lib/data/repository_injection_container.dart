import 'package:data/modules/articles/article_repository_impl.dart';
import 'package:domain/modules/articles/repositories/article_repository.dart';
import 'package:get_it/get_it.dart';

Future<void> repositoryInjectionContainer(GetIt serviceLocator) async {
  serviceLocator.registerLazySingleton<ArticleRepository>(
    () => ArticleRepositoryImpl(serviceLocator()),
  );
}
