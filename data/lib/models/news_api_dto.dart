import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_api_dto.freezed.dart';
part 'news_api_dto.g.dart';

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

@freezed
abstract class ArticleApiDto with _$ArticleApiDto {
  const factory ArticleApiDto({
    SourceApiDto? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _ArticleApiDto;

  factory ArticleApiDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleApiDtoFromJson(json);
}

@freezed
abstract class SourceApiDto with _$SourceApiDto {
  const factory SourceApiDto({String? id, String? name}) = _SourceApiDto;

  factory SourceApiDto.fromJson(Map<String, dynamic> json) =>
      _$SourceApiDtoFromJson(json);
}
