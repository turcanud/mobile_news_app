abstract class RemoteArticleEvent {
  const RemoteArticleEvent();
}

class GetArticlesEvent extends RemoteArticleEvent {
  const GetArticlesEvent();
}

class GetMoreArticlesEvent extends RemoteArticleEvent {
  const GetMoreArticlesEvent();
}
