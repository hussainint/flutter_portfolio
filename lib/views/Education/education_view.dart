import 'package:flutter/material.dart';
import 'package:portfolio2/components/DrawerOptions/drawerOptions.dart';
import 'package:portfolio2/components/header.dart';
import 'package:portfolio2/views/Education/Education_content.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

import '../../components/contactMeCard.dart';
import '../../components/headingCard.dart';
import '../WorkExperience/components/projectDisplay.dart';

class EducationView extends StatelessWidget {
  static const routeName = '/education';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SidebarDrawer(
      drawer: DrawerOptions(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),

            ///
            HeadingCard(
              title1: 'Education',
              subtitle1: 'Software Engineering & Part time Diploma',
              subtitle2: '',
            ),

            ProjectDisplay(
              heading1: EducationContent.education[0][0],
              highlightedHeading: EducationContent.education[0][1],
              description: EducationContent.education[0][2],
              imageurl: EducationContent.education[0][3],
            ),
            ProjectDisplay(
              isReverse: true,
              heading1: EducationContent.education[1][0],
              highlightedHeading: EducationContent.education[1][1],
              description: EducationContent.education[1][2],
              imageurl: EducationContent.education[1][3],
            ),
            ContactMeCard(),
          ],
        ),
      ),
    ));
  }
}
