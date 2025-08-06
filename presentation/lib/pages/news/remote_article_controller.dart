import 'package:common/constants/api_constants.dart';
import 'package:get/get.dart';

import 'package:common/params.dart';
import 'package:domain/modules/articles/entities/index/index.dart';
import 'package:domain/modules/articles/usecases/get_article_usecase.dart';
import 'package:get_it/get_it.dart';

enum RemoteArticleStatus { loading, success, error }

class RemoteArticleController extends GetxController {
  final GetArticleUsecase getArticleUsecase = GetIt.instance.get();

  RxList<ArticleEntity> articles = RxList<ArticleEntity>([]);
  RxList<ArticleEntity> carouselArticles = RxList<ArticleEntity>([]);

  RxInt page = RxInt(1);
  Rx<RemoteArticleStatus> status = Rx<RemoteArticleStatus>(
    RemoteArticleStatus.loading,
  );
  RxString error = RxString('');

  @override
  void onInit() {
    super.onInit();
    getArticles();
  }

  Future<void> getArticles() async {
    page.value = 1;
    status.value = RemoteArticleStatus.loading;
    final result = await getArticleUsecase(
      params: GetArticleParams(
        query: ApiConstants.query,
        page: page.value.toString(),
      ),
    );
    result.fold(
      (failure) {
        error.value = failure.errorMessage;
        status.value = RemoteArticleStatus.error;
      },
      (data) {
        articles.assignAll(data);
        carouselArticles.assignAll(data);
        status.value = RemoteArticleStatus.success;
      },
    );
  }

  Future<void> getMoreArticles() async {
    final nextPage = page.value + 1;
    final result = await getArticleUsecase(
      params: GetArticleParams(
        query: ApiConstants.query,
        page: nextPage.toString(),
      ),
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
