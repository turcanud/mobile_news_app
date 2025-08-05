import 'package:domain/modules/articles/entities/index/index.dart';

import '../modules/articles/models/index/index.dart';

extension ArticlesMapper on List<ArticleApiDto> {
  List<ArticleEntity> toEntities() {
    return map(
      (dto) => ArticleEntity(
        source: SourceEntity(id: dto.source?.id, name: dto.source?.name),
        author: dto.author ?? 'Unknown Author',
        content: dto.content ?? 'No content available',
        description: dto.description ?? 'No description available',
        publishedAt: dto.publishedAt ?? 'Unknown date',
        title: dto.title ?? 'No title available',
        url: dto.url ?? 'No URL available',
        urlToImage: dto.urlToImage ?? 'No image available',
      ),
    ).toList();
  }
}
