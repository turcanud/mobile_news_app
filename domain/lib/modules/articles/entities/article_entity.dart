import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_entity.freezed.dart';

@freezed
abstract class ArticleEntity with _$ArticleEntity {
  const factory ArticleEntity({
    SourceEntity? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _ArticleEntity;
}

@freezed
abstract class SourceEntity with _$SourceEntity {
  const factory SourceEntity({String? id, String? name}) = _SourceEntity;
}
