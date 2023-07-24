import 'package:flutter/material.dart';
import 'package:portfolio2/res/styles_res.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoCard1 extends StatelessWidget {
  InfoCard1(
      {required this.width,
      required this.imagelink,
      required this.description,
      required this.title,
      required this.url});

  final double width;
  final String imagelink;
  final String description;
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: url.isNotEmpty
          ? () async {
              if (!await launchUrl(Uri.parse(url))) {
                throw Exception('Could not launch');
              }
            }
          : null,
      child: Card(
        child: Container(
          margin: EdgeInsets.all(20),
          width: width * 0.23,
          child: Column(
            children: [
              if (imagelink.isNotEmpty)
                Image.network(
                  imagelink,
                  height: width * 0.2,
                ),
              SizedBox(height: 20),
              FittedBox(
                child: Text(
                  title,
                  style: st_bold2(isMobile: false),
                ),
              ),
              SizedBox(height: 20),
              Text(description)
            ],
          ),
        ),
      ),
    );
  }
}
