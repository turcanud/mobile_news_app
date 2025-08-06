import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:di/init_di.dart';

import 'core/constants/colors_constants.dart';
import 'core/constants/dimensions_constants.dart';
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
      home: Scaffold(
        backgroundColor: ColorsConstants.kBackgroundColor,
        body: SafeArea(
          child: Container(
            margin: DimensionsConstants.kDefaultMargin,
            child: NewsPage(),
          ),
        ),
      ),
    );
  }
}
