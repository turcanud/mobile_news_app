import 'package:get/get.dart';

import 'package:common/params.dart';
import 'package:domain/modules/articles/entities/index/index.dart';
import 'package:domain/modules/articles/usecases/get_article_usecase.dart';

enum RemoteArticleStatus { loading, success, error }

class RemoteArticleController extends GetxController {
  final GetArticleUsecase _getArticleUsecase;

  RemoteArticleController(this._getArticleUsecase);

  var articles = <ArticleEntity>[].obs;
  var page = 1.obs;
  var status = RemoteArticleStatus.loading.obs;
  var error = ''.obs;

  final String query = 'Crime';

  @override
  void onInit() {
    super.onInit();
    getArticles();
  }

  Future<void> getArticles() async {
    status.value = RemoteArticleStatus.loading;
    final result = await _getArticleUsecase(
      params: GetArticleParams(query: query, page: '1'),
    );
    result.fold(
      (failure) {
        error.value = failure.errorMessage;
        status.value = RemoteArticleStatus.error;
      },
      (data) {
        articles.assignAll(data);
        page.value = 1;
        status.value = RemoteArticleStatus.success;
      },
    );
  }

  Future<void> getMoreArticles() async {
    final nextPage = page.value + 1;
    final result = await _getArticleUsecase(
      params: GetArticleParams(query: query, page: nextPage.toString()),
    );
    result.fold(
      (failure) {
        error.value = failure.errorMessage;
        status.value = RemoteArticleStatus.error;
      },
      (data) {
        articles.addAll(data);
        page.value = nextPage;
        status.value = RemoteArticleStatus.success;
      },
    );
  }
}
