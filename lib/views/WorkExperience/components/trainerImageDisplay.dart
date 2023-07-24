import 'package:flutter/material.dart';
import 'package:portfolio2/res/styles_res.dart';

class TrainerImageDisplay extends StatelessWidget {
  final List<String> images;
  final String title;
  final String subtitle;
  TrainerImageDisplay({
    required this.images,
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          FittedBox(
            child: Text(
              title,
              style: st_bold2(isMobile: true),
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            width: double.infinity,
            child: Wrap(
              children: [
                for (var i = 0; i < images.length; i++)
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Image.network(
                      images[i],
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
