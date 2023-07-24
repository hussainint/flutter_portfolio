import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio2/res/styles_res.dart';

class HeadingCard extends StatelessWidget {
  String title1;
  String subtitle1;
  String subtitle2;
  HeadingCard({
    required this.title1,
    required this.subtitle1,
    required this.subtitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 212, 225, 255),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title1,
              style: st_bold1(isMobile: false),
            ),
            Text(
              subtitle1,
              style: st_bold2(isMobile: false),
            ),
            Text(
              subtitle2,
              style: st_bold2(isMobile: false),
            ),
          ],
        ),
      ),
    );
  }
}
