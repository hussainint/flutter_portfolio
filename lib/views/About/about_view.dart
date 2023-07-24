import 'package:flutter/material.dart';
import 'package:portfolio2/components/DrawerOptions/drawerOptions.dart';
import 'package:portfolio2/components/header.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

import '../../components/contactMeCard.dart';
import 'components/experienceList.dart';
import 'components/individualDetails.dart';
import 'components/intro.dart';
import 'components/latestProject.dart';

class AboutView extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height - 80;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SidebarDrawer(
      drawer: DrawerOptions(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Intro(height: height),
            ExperienceList(width: width),
            IndividualDetails(),
            LatestProjects(),
            ContactMeCard(),
            // Container(
            //   height: height * 0.4,
            //   color: Colors.grey[100],
            // )
          ],
        ),
      ),
    ));
  }
}
