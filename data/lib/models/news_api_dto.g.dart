// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_api_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewsApiDto _$NewsApiDtoFromJson(Map<String, dynamic> json) => _NewsApiDto(
  status: json['status'] as String?,
  totalResults: (json['totalResults'] as num?)?.toInt(),
  articles: (json['articles'] as List<dynamic>?)
      ?.map((e) => ArticleApiDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$NewsApiDtoToJson(_NewsApiDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };

_ArticleApiDto _$ArticleApiDtoFromJson(Map<String, dynamic> json) =>
    _ArticleApiDto(
      source: json['source'] == null
          ? null
          : SourceApiDto.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$ArticleApiDtoToJson(_ArticleApiDto instance) =>
    <String, dynamic>{
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };

_SourceApiDto _$SourceApiDtoFromJson(Map<String, dynamic> json) =>
    _SourceApiDto(id: json['id'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$SourceApiDtoToJson(_SourceApiDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
