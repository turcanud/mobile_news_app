part of 'index/index.dart';

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
