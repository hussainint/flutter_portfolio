import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio2/components/openLink.dart';
import 'package:portfolio2/res/colors_res.dart';
import 'package:portfolio2/res/responsive_res.dart';

class ProjectDisplay extends StatelessWidget {
  String heading1;
  String highlightedHeading;
  String description;
  bool isReverse;
  String imageurl;
  String? url;
  ProjectDisplay({
    required this.heading1,
    required this.highlightedHeading,
    required this.description,
    required this.imageurl,
    this.isReverse = false,
    this.url,
  });
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Responsive(
        mobile: Column(
          children: [
            ProjectContent(
                isReverse: isReverse,
                heading1: heading1,
                highlightedHeading: highlightedHeading,
                description: description),
            ProjectDisplayImageWeb(
              width: width,
              url: imageurl,
            ),
            if (url != null) OpenLink(title: 'View More', url: url!),
          ],
        ),
        desktop: Row(
          children: [
            if (isReverse)
              ProjectDisplayImageWeb(
                width: width,
                url: imageurl,
              ),
            Expanded(
              child: Column(
                children: [
                  ProjectContent(
                      isReverse: isReverse,
                      heading1: heading1,
                      highlightedHeading: highlightedHeading,
                      description: description),
                  if (url != null) OpenLink(title: 'View More', url: url!),
                ],
              ),
            ),
            if (!isReverse)
              ProjectDisplayImageWeb(
                width: width,
                url: imageurl,
              )
          ],
        ),
      ),
    );
  }
}

class ProjectContent extends StatelessWidget {
  const ProjectContent({
    super.key,
    required this.isReverse,
    required this.heading1,
    required this.highlightedHeading,
    required this.description,
  });

  final bool isReverse;
  final String heading1;
  final String highlightedHeading;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          !isReverse ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        FittedBox(
          child: Text(
            heading1,
            style: GoogleFonts.bebasNeue(
              textStyle: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            textAlign: !isReverse ? TextAlign.start : TextAlign.end,
          ),
        ),
        Text(
          highlightedHeading,
          style: GoogleFonts.bebasNeue(
            textStyle: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          textAlign: !isReverse ? TextAlign.start : TextAlign.end,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 15,
            color: fontColor_grey,
          ),
          textAlign: !isReverse ? TextAlign.start : TextAlign.end,
        ),

        /// add links
      ],
    );
  }
}

class ProjectDisplayImageWeb extends StatelessWidget {
  const ProjectDisplayImageWeb({
    super.key,
    required this.width,
    required this.url,
  });

  final double width;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(right: 30),
      height: width * 0.2,
      width: width * 0.25,
      child: Card(
        child: Image.network(url),
      ),
    );
  }
}
