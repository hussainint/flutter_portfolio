import 'package:flutter/material.dart';
import 'package:portfolio2/components/DrawerOptions/drawerOptions.dart';
import 'package:portfolio2/components/header.dart';
import 'package:portfolio2/views/Projects/project_content.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

import '../../components/contactMeCard.dart';
import '../../components/headingCard.dart';
import '../../components/infoCard1.dart';
import '../WorkExperience/workexperience_content.dart';

class ProjectsView extends StatelessWidget {
  static const routeName = '/projects';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SidebarDrawer(
      drawer: DrawerOptions(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),

            ///
            HeadingCard(
              title1: 'Projects',
              subtitle1: '',
              subtitle2: '',
            ),
            Wrap(
              children: [
                for (var item in ProjectContent.project)
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
