import 'package:get_it/get_it.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_bloc.dart';

Future<void> stateInjectionContainer(GetIt serviceLocator) async {
  serviceLocator.registerFactory<RemoteArticleBloc>(
    () => RemoteArticleBloc(serviceLocator()),
  );
}
