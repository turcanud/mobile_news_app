import 'package:common/constants/api_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:data/errors/failure.dart';
import 'package:data/models/news_api_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseApiUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/everything')
  Future<NewsApiDto> getNewsArticles({
    @Query('q') String? query,
    @Query('page') String? page,
    @Query('pageSize') String? pageSize,
    @Query('apiKey') String? apiKey,
  });
}
