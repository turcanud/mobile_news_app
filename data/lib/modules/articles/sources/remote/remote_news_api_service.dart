import 'package:common/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../models/index/index.dart';

part 'remote_news_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseApiUrl)
abstract class RemoteNewsApiService {
  factory RemoteNewsApiService(Dio dio) = _RemoteNewsApiService;

  @GET('/everything')
  Future<NewsApiDto> getArticlesApi({
    @Query('q') String? query,
    @Query('page') String? page,
    @Query('pageSize') String? pageSize,
    @Query('apiKey') String? apiKey,
  });
}
