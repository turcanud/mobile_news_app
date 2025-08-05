import 'package:get_it/get_it.dart';
import 'package:presentation/pages/news/remote_article_controller.dart';

Future<void> stateInjectionContainer(GetIt serviceLocator) async {
  serviceLocator.registerFactory<RemoteArticleController>(
    () => RemoteArticleController(serviceLocator()),
  );
}
