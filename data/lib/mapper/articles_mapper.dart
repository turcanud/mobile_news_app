import 'package:domain/modules/articles/entities/article_entity.dart';

import '../models/news_api_dto.dart';

extension ArticlesMapper on List<ArticleApiDto> {
  List<ArticleEntity> toEntities() {
    return map(
      (dto) => ArticleEntity(
        source: SourceEntity(id: dto.source?.id, name: dto.source!.name),
        author: dto.author ?? 'Unknown Author',
        content: dto.content,
        description: dto.description,
        publishedAt: dto.publishedAt,
        title: dto.title,
        url: dto.url,
        urlToImage: dto.urlToImage,
      ),
    ).toList();
  }
}
