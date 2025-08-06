import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:common/constants/api_constants.dart';
import 'package:data/modules/articles/sources/remote/remote_news_api_service.dart';

Future<void> apiServiceInjectionContainer() async {
  final sl = GetIt.instance;

  var dioConfiguration = BaseOptions(
    baseUrl: ApiConstants.baseApiUrl,
    connectTimeout: Duration(seconds: 5),
    receiveTimeout: Duration(seconds: 3),
  );

  var dioClient = Dio(dioConfiguration);

  dioClient.interceptors.add(
    LogInterceptor(
      request: true,
      responseHeader: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
    ),
  );

  sl.registerLazySingleton<RemoteNewsApiService>(
    () => RemoteNewsApiService(dioClient),
  );
}
