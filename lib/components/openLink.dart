import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenLink extends StatefulWidget {
  String title;
  String url;
  OpenLink({
    required this.title,
    required this.url,
  });

  @override
  State<OpenLink> createState() => _OpenLinkState();
}

class _OpenLinkState extends State<OpenLink> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (!await launchUrl(Uri.parse(widget.url))) {
          throw Exception('Could not launch');
        }
      },
      onHover: (v) {
        setState(() {
          isHover = v;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontWeight: isHover ? FontWeight.bold : null,
              ),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.arrow_right_alt_rounded,
              size: 18,
              weight: isHover ? 30 : 10,
            )
          ],
        ),
      ),
    );
  }
}
