import 'package:data/modules/articles/sources/remote/remote_news_api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

Future<void> apiServiceInjectionContainer(GetIt serviceLocator) async {
  serviceLocator.registerSingleton<Dio>(Dio());
  serviceLocator.registerLazySingleton<RemoteNewsApiService>(
    () => RemoteNewsApiService(serviceLocator()),
  );
}
