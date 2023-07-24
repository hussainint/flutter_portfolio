import 'package:flutter/material.dart';
import 'package:portfolio2/route/path.dart';
import 'package:portfolio2/views/About/about_view.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio2/views/WorkExperience/workExperiece_view.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,

      ///
      title: 'Sarwer Hussain',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }

  final GoRouter _router = GoRouter(
    // initialLocation: AddPeople.routeName,
    initialLocation: AboutView.routeName,

    // errorBuilder: (context, state) => PathNotFound(message: '${state.error}'),
    routes: route,
  );
}
