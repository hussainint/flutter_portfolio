import 'package:flutter/material.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: DrawerIcon(),
      title: Text('Sarwer Hussain\'s Portfolio'),
    );
  }
}
