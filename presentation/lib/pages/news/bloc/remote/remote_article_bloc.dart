import 'package:common/params.dart';
import 'package:domain/modules/articles/usecases/get_article_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_event.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_state.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetArticleUsecase _getArticleUsecase;
  RemoteArticleBloc(this._getArticleUsecase)
    : super(const RemoteArticleLoading()) {
    on<GetArticlesEvent>(onGetArticles);
    on<GetMoreArticlesEvent>(onGetMoreArticles);
  }

  void onGetArticles(
    GetArticlesEvent event,
    Emitter<RemoteArticleState> emit,
  ) async {
    final dataState = await _getArticleUsecase(
      params: GetArticleParams(query: 'Crime', page: '1'),
    );
    dataState.fold(
      (failure) => emit(RemoteArticleError(error: failure.errorMessage)),
      (articles) => emit(RemoteArticleReady(articles: articles, page: 1)),
    );
  }

  void onGetMoreArticles(
    GetMoreArticlesEvent event,
    Emitter<RemoteArticleState> emit,
  ) async {
    var nextPage = state.page! + 1;
    final dataState = await _getArticleUsecase(
      params: GetArticleParams(query: 'Crime', page: nextPage.toString()),
    );
    dataState.fold(
      (failure) => emit(RemoteArticleError(error: failure.errorMessage)),
      (articles) => emit(
        RemoteArticleReady(
          articles: [...?state.articles, ...articles],
          page: nextPage,
        ),
      ),
    );
  }
}
