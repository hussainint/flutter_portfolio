import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio2/route/path.dart';
import 'package:portfolio2/views/About/about_view.dart';
import 'package:portfolio2/views/Education/education_view.dart';
import 'package:portfolio2/views/Projects/projects_view.dart';
import 'package:portfolio2/views/openSource/publishedPackages_view.dart';
import 'package:portfolio2/views/WorkExperience/workExperiece_view.dart';
import 'package:portfolio2/views/youtube_view.dart';

class DrawerOptionsController {
  IconData? getIconForMenus(GoRoute page) {
    switch (page.path) {
      case AboutView.routeName:
        return Icons.person;

      case WorkExperienceView.routeName:
        return Icons.work_history;

      case EducationView.routeName:
        return Icons.school;

      case ProjectsView.routeName:
        return Icons.signpost_rounded;

      case PublishedPackagesView.routeName:
        return Icons.file_upload_outlined;

      case YoutubeView.routeName:
        return Icons.ondemand_video_sharp;

      default:
        return Icons.abc;
    }
  }
}
