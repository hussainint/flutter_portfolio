import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio2/components/DrawerOptions/drawerOptions.dart';
import 'package:portfolio2/components/header.dart';
import 'package:portfolio2/components/infoCard1.dart';
import 'package:portfolio2/components/openLink.dart';
import 'package:portfolio2/res/colors_res.dart';
import 'package:portfolio2/views/About/aboutme_content.dart';
import 'package:portfolio2/views/WorkExperience/components/projectDisplay.dart';
import 'package:portfolio2/views/WorkExperience/components/trainerImageDisplay.dart';

import 'package:portfolio2/views/WorkExperience/workexperience_content.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';
import 'dart:math' as math;

import '../../components/contactMeCard.dart';
import '../../components/headingCard.dart'; // import this

class WorkExperienceView extends StatelessWidget {
  static const routeName = '/work_exp';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SidebarDrawer(
      drawer: DrawerOptions(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: 30),

            ///
            HeadingCard(
              title1: WorkExperienceContent.experience[0][0],
              subtitle1: WorkExperienceContent.experience[0][1],
              subtitle2: WorkExperienceContent.experience[0][2],
            ),

            ProjectDisplay(
              heading1: WorkExperienceContent.projects[0][0],
              highlightedHeading: WorkExperienceContent.projects[0][1],
              description: WorkExperienceContent.projects[0][2],
              imageurl: WorkExperienceContent.projects[0][3],
              url: AboutMeContent.latestProjects[1][3],
            ),

            ProjectDisplay(
              isReverse: true,
              heading1: WorkExperienceContent.projects[1][0],
              highlightedHeading: WorkExperienceContent.projects[1][1],
              description: WorkExperienceContent.projects[1][2],
              imageurl: WorkExperienceContent.projects[1][3],
              url: AboutMeContent.latestProjects[3][3],
            ),

            ///
            SizedBox(height: 30),

            /// trainer
            HeadingCard(
              title1: WorkExperienceContent.experience[1][0],
              subtitle1: WorkExperienceContent.experience[1][1],
              subtitle2: WorkExperienceContent.experience[1][2],
            ),
            TrainerImageDisplay(
              title: WorkExperienceContent.trainer[0][0],
              images: WorkExperienceContent.sairamImg,
              subtitle: WorkExperienceContent.trainer[0][1],
            ),
            TrainerImageDisplay(
              title: WorkExperienceContent.trainer[1][0],
              images: WorkExperienceContent.panimalarImg,
              subtitle: WorkExperienceContent.trainer[1][1],
            ),

            ///
            HeadingCard(
              title1: 'Freelance',
              subtitle1: '',
              subtitle2: '',
            ),
            Wrap(
              children: [
                for (var item in WorkExperienceContent.freelance)
                  InfoCard1(
                    width: width,
                    title: item[0],
                    imagelink: item[2],
                    description: item[1],
                    url: item[3],
                  ),
              ],
            ),

            ContactMeCard(),
          ],
        ),
      ),
    ));
  }
}
