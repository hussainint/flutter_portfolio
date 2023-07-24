import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio2/components/DrawerOptions/drawerOptionsController.dart';
import 'package:portfolio2/res/asset_res.dart';
import 'package:portfolio2/res/colors_res.dart';
import 'package:portfolio2/res/styles_res.dart';
import 'package:portfolio2/route/path.dart';

class DrawerOptions extends StatelessWidget {
  const DrawerOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: primaryColor,
        child: Column(
          children: [
            SizedBox(height: 10),
            DrawerHeader(),
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: route.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    margin: EdgeInsets.all(12),
                    child: MaterialButton(
                      hoverColor: secondaryColor,
                      textColor: Colors.white,
                      onPressed: () {
                        context.go(route[i].path);
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Icon(
                              DrawerOptionsController()
                                  .getIconForMenus(route[i]),
                              size: 20,
                            ),
                            SizedBox(width: 13),
                            Text(
                              '${route[i].name}',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              shape: BoxShape.rectangle,
              color: Colors.grey[300],
              image: DecorationImage(
                image: AssetImage(AssetRes.pic2),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hussain Sarwer',
                style: st_lable_f18_white_w600,
              ),
              Text(
                'Flutter developer',
                style: st_lable_f14_white_w400,
              ),
            ],
          )
        ],
      ),
    );
  }
}
