
import 'package:flutter/material.dart';
import 'package:portfolio2/components/DrawerOptions/drawerOptions.dart';
import 'package:portfolio2/components/header.dart';

import 'package:sidebar_drawer/sidebar_drawer.dart';

class YoutubeView extends StatelessWidget {
  static const routeName = '/youtube';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SidebarDrawer(
      drawer: DrawerOptions(),
      body: Column(
        children: [
          Header(),
        ],
      ),
    ));
  }
}
