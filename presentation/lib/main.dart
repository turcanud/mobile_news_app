import 'package:di/init_di.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation/pages/news/bindings/remote_article_binding.dart';

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
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
