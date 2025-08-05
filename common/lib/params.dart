import 'constants/api_constants.dart';

class NoParams {}

class GetArticleParams {
  final String query;
  final String page;
  final String pageSize;
  final String apiKey;

  GetArticleParams({
    required this.query,
    required this.page,
    this.pageSize = '10',
    this.apiKey = ApiConstants.apiKey,
  });
}
