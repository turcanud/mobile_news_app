import 'package:di/init_di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_bloc.dart';
import 'package:presentation/pages/news/bloc/remote/remote_article_event.dart';

import 'core/constants/design_constants.dart';
import 'pages/news/news_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticleBloc>(
      create: (context) =>
          serviceLocator<RemoteArticleBloc>()..add(const GetArticlesEvent()),
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'News App',
            home: Scaffold(
              backgroundColor: DesignConstants.kBackgroundColor,
              body: SafeArea(
                child: Container(
                  margin: DesignConstants.kDefaultMargin,
                  child: NewsPage(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
