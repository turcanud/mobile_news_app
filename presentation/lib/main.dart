import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:di/init_di.dart';

import 'core/constants/design_constants.dart';
import 'pages/news/bindings/remote_article_binding.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile News App',
      initialBinding: RemoteArticleBinding(),
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
  }
}
