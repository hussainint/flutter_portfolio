import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../res/responsive_res.dart';
import '../route/path.dart';

class ContactMeCard extends StatelessWidget {
  const ContactMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List socials = [
      [
        'Whatsapp',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/2044px-WhatsApp.svg.png',
        'https://wa.me/919176443199',
      ],
      [
        'Instagram',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png',
        'https://www.instagram.com/_hussainint/?hl=en',
      ],
      [
        'Mail',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Gmail_icon_%282020%29.svg/2560px-Gmail_icon_%282020%29.svg.png',
        'mailto:hussainint08@gmail.com?subject=hi&body=hi',
      ],
      [
        'Linkdin',
        'https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png?20140125013055',
        'https://www.linkedin.com/in/hussainint/',
      ],
    ];
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(Responsive.isDesktop(context) ? 80 : 50),
      padding: EdgeInsets.all(Responsive.isDesktop(context) ? 50 : 20),
      decoration: BoxDecoration(
        color: Color(0xff042448),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ///
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FittedBox(
                child: Text(
                  'Contact Me',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Reach out to me through below socials ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 50),
              Wrap(
                runSpacing: 30,
                spacing: 40,
                children: [
                  for (var item in socials)
                    InkWell(
                      onTap: () async {
                        if (!await launchUrl(Uri.parse(item[2]))) {
                          throw Exception('Could not launch');
                        }
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.indigo, shape: BoxShape.circle),
                        padding: EdgeInsets.all(13),
                        child: Image.network(item[1]),
                      ),
                    ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Wrap(
            children: [
              for (var item in route)
                InkWell(
                  onTap: () {
                    context.go(item.path);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.indigo[100],
                    ),
                    child: Text(
                      '${item.name}',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
