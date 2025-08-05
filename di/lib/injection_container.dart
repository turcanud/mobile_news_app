import 'package:data/data_sources/remote/news_api_service.dart';
import 'package:data/repository/article_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:domain/modules/articles/repositories/article_repository.dart';
import 'package:domain/modules/articles/usecases/get_article_usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initializeDependentcies() async {
  serviceLocator.registerSingleton<Dio>(Dio());
  serviceLocator.registerSingleton<NewsApiService>(
    NewsApiService(serviceLocator()),
  );
  serviceLocator.registerSingleton<ArticleRepository>(
    ArticleRepositoryImpl(serviceLocator()),
  );
  serviceLocator.registerSingleton<GetArticleUsecase>(
    GetArticleUsecase(serviceLocator()),
  );
  serviceLocator.registerFactory<RemoteArticleBloc>(
    () => RemoteArticleBloc(serviceLocator()),
  );
}
