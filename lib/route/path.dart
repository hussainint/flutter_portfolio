import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio2/views/About/about_view.dart';
import 'package:portfolio2/views/Education/education_view.dart';
import 'package:portfolio2/views/Projects/projects_view.dart';
import 'package:portfolio2/views/openSource/publishedPackages_view.dart';
import 'package:portfolio2/views/WorkExperience/workExperiece_view.dart';
import 'package:portfolio2/views/youtube_view.dart';

List<GoRoute> route = <GoRoute>[
  GoRoute(
    name: 'About',
    path: AboutView.routeName,
    builder: (BuildContext context, GoRouterState state) => AboutView(),
  ),
  GoRoute(
    name: 'Work Experience',
    path: WorkExperienceView.routeName,
    builder: (BuildContext context, GoRouterState state) =>
        WorkExperienceView(),
  ),
  GoRoute(
    name: 'Education',
    path: EducationView.routeName,
    builder: (BuildContext context, GoRouterState state) => EducationView(),
  ),
  GoRoute(
    name: 'Projects',
    path: ProjectsView.routeName,
    builder: (BuildContext context, GoRouterState state) => ProjectsView(),
  ),
  GoRoute(
    name: 'Published Packages',
    path: PublishedPackagesView.routeName,
    builder: (BuildContext context, GoRouterState state) =>
        PublishedPackagesView(),
  ),
  GoRoute(
    name: 'Youtube',
    path: YoutubeView.routeName,
    builder: (BuildContext context, GoRouterState state) => YoutubeView(),
  ),
];
