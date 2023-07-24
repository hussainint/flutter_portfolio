import 'package:flutter/material.dart';
import 'package:portfolio2/components/openLink.dart';
import 'package:portfolio2/views/About/aboutme_content.dart';

import '../../../res/responsive_res.dart';

class LatestProjects extends StatelessWidget {
  const LatestProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xff007efd),
          Color(0xff1ad6c7),
        ],
      )),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 60,
          vertical: Responsive.isDesktop(context) ? 60 : 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Latest Projects',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Mobile Apps made with Flutter',
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Responsive(
              mobile: Column(
                children: [
                  Column(
                    children: [
                      ProjectCard(
                        title: AboutMeContent.latestProjects[0][0],
                        subtitle: AboutMeContent.latestProjects[0][1],
                        imagelink: AboutMeContent.latestProjects[0][2],
                        url: AboutMeContent.latestProjects[0][3],
                      ),
                      ProjectCard(
                        title: AboutMeContent.latestProjects[1][0],
                        subtitle: AboutMeContent.latestProjects[1][1],
                        imagelink: AboutMeContent.latestProjects[1][2],
                        url: AboutMeContent.latestProjects[1][3],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ProjectCard(
                        title: AboutMeContent.latestProjects[2][0],
                        subtitle: AboutMeContent.latestProjects[2][1],
                        imagelink: AboutMeContent.latestProjects[2][2],
                        url: AboutMeContent.latestProjects[2][3],
                      ),
                      ProjectCard(
                        title: AboutMeContent.latestProjects[3][0],
                        subtitle: AboutMeContent.latestProjects[3][1],
                        imagelink: AboutMeContent.latestProjects[3][2],
                        url: AboutMeContent.latestProjects[3][3],
                      ),
                    ],
                  )
                ],
              ),
              desktop: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 4,
                          child: ProjectCard(
                            title: AboutMeContent.latestProjects[0][0],
                            subtitle: AboutMeContent.latestProjects[0][1],
                            imagelink: AboutMeContent.latestProjects[0][2],
                            url: AboutMeContent.latestProjects[0][3],
                          )),
                      Expanded(
                          flex: 6,
                          child: ProjectCard(
                            title: AboutMeContent.latestProjects[1][0],
                            subtitle: AboutMeContent.latestProjects[1][1],
                            imagelink: AboutMeContent.latestProjects[1][2],
                            url: AboutMeContent.latestProjects[1][3],
                          )),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 4,
                          child: ProjectCard(
                            title: AboutMeContent.latestProjects[2][0],
                            subtitle: AboutMeContent.latestProjects[2][1],
                            imagelink: AboutMeContent.latestProjects[2][2],
                            url: AboutMeContent.latestProjects[2][3],
                          )),
                      Expanded(
                          flex: 6,
                          child: ProjectCard(
                            title: AboutMeContent.latestProjects[3][0],
                            subtitle: AboutMeContent.latestProjects[3][1],
                            imagelink: AboutMeContent.latestProjects[3][2],
                            url: AboutMeContent.latestProjects[3][3],
                          )),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  String title;
  String subtitle;
  String imagelink;
  String url;
  ProjectCard({
    required this.title,
    required this.subtitle,
    required this.imagelink,
    required this.url,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 50, top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imagelink.isNotEmpty)
            Container(
              height: 80,
              width: 80,
              padding: EdgeInsets.all(15),
              decoration:
                  BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              child: Image.network(imagelink),
            ),
          SizedBox(height: 30),
          Text(
            '$title ',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 30),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          OpenLink(title: 'View ', url: url),
        ],
      ),
    );
  }
}
