import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hw_11_2/pages/third_pages.dart';
import 'package:hw_11_2/pages/detail_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const FirstPage(),
    ),

    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final user = state.extra as User;
        return ContactDetailsPage(user: user);
      },
    ),
  ],
);