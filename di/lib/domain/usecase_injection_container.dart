import 'package:domain/modules/articles/usecases/get_article_usecase.dart';
import 'package:get_it/get_it.dart';

Future<void> usecaseInjectionContainer(GetIt serviceLocator) async {
  serviceLocator.registerLazySingleton<GetArticleUsecase>(
    () => GetArticleUsecase(serviceLocator()),
  );
}
