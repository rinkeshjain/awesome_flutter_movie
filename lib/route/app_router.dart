import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../core/presentation/screen/main_page.dart';
import 'app_routes.dart';

const String moviesPath = '/movies';
const String tvShowsPath = '/tvShows';
const String searchPath = '/search';
const String watchlistPath = '/watchlist';

class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: moviesPath,
    routes: [
      ShellRoute(
        builder: (context, state, child) => MainPage(child: child),
        routes: [
          GoRoute(
            name: AppRoutes.moviesRoute,
            path: moviesPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Text("Movie Screen"),
            )
          ),
          GoRoute(
            name: AppRoutes.tvShowsRoute,
            path: tvShowsPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Text("Tv Screen"),
            )
          ),
          GoRoute(
            name: AppRoutes.searchRoute,
            path: searchPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Text("Search Screen"),
            ),
          ),
          GoRoute(
            name: AppRoutes.watchlistRoute,
            path: watchlistPath,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: Text("Watch List Screen"),
            ),
          ),
        ],
      )
    ],
  );
}
