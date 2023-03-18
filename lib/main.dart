import 'package:awesome_movie_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'resources/app_strings.dart';
import 'route/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: getMovieTheme(),
      routerConfig: AppRouter().router,
    );
  }
}
