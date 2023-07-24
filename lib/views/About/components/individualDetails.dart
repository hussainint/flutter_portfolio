import 'package:flutter/material.dart';
import 'package:portfolio2/components/openLink.dart';
import 'package:portfolio2/res/asset_res.dart';

import '../../../res/responsive_res.dart';
import '../aboutme_content.dart';

class IndividualDetails extends StatelessWidget {
  const IndividualDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, cons) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
            left: Responsive.isDesktop(context) ? 120 : 60,
            right: Responsive.isDesktop(context) ? 120 : 60,
            bottom: Responsive.isDesktop(context) ? 60 : 40),
        child: Responsive(
          desktop: Row(
            children: [
              Expanded(
                child: IndividualDetailsText(),
              ),
              SizedBox(width: 100),
              Container(
                  height: cons.maxWidth * 0.4,
                  width: cons.maxWidth * 0.4,
                  child: Image.asset(AssetRes.youtubebanner)

                  // child: Image.asset(
                  //   'assets/myPic1.png',
                  //   height: cons.maxWidth * 0.4,
                  //   width: cons.maxWidth * 0.4,
                  //   fit: BoxFit.contain,
                  // ),
                  )
            ],
          ),
          mobile: Column(
            children: [
              IndividualDetailsText(),
              Container(
                height: cons.maxWidth * 0.85,
                width: cons.maxWidth * 0.85,
                // child: Image.asset(
                //   'assets/myPic1.png',
                //   fit: BoxFit.contain,
                // ),
                child: Image.asset(AssetRes.youtubebanner),
              )
            ],
          ),
        ),
      );
    });
  }
}

class IndividualDetailsText extends StatelessWidget {
  const IndividualDetailsText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AboutMeContent.individualDetails[0],
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.grey[800]),
        ),
        SizedBox(height: 20),
        Text(
          AboutMeContent.individualDetails[1],
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Text(
          AboutMeContent.individualDetails[2],
          style: TextStyle(
              fontSize: Responsive.isDesktop(context) ? 24 : 20,
              fontWeight: FontWeight.w500,
              height: 1.5),
        ),
        OpenLink(
          title: 'View Channel',
          url: 'https://www.youtube.com/@hussainnes',
        )
      ],
    );
  }
}
