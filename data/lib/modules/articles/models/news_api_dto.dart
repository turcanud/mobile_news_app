part of 'index/index.dart';

@freezed
abstract class NewsApiDto with _$NewsApiDto {
  const factory NewsApiDto({
    String? status,
    int? totalResults,
    List<ArticleApiDto>? articles,
  }) = _NewsApiDto;

  factory NewsApiDto.fromJson(Map<String, dynamic> json) =>
      _$NewsApiDtoFromJson(json);
}
