import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:p1_flutter_ai/src/routing/const_routes.dart';
import 'package:p1_flutter_ai/src/routing/pages.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/',
          name: ConstRoutes.iai01,
          builder: (context, state) => const AIA01(),
          routes: [
            GoRoute(
              path: 'sign-in',
              name: ConstRoutes.iai02,
              builder: (context, state) => const AIA02(),
            ),
          ]),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const Center(
        child: Text('Navigation Error'),
      ),
    ),
  );
}
