import 'package:flutter/material.dart';
import 'package:portfolio2/components/DrawerOptions/drawerOptions.dart';
import 'package:portfolio2/components/header.dart';
import 'package:portfolio2/views/openSource/publishedPackagesContent.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

import '../../components/contactMeCard.dart';
import '../../components/headingCard.dart';
import '../../components/infoCard1.dart';

class PublishedPackagesView extends StatelessWidget {
  static const routeName = '/published-packages';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SidebarDrawer(
      drawer: DrawerOptions(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            HeadingCard(
              title1: 'Publish Packages',
              subtitle1: '',
              subtitle2: '',
            ),
            Wrap(
              children: [
                for (var item in PublishedPackagesContent.project)
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
