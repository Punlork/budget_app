import 'package:flutter/material.dart';

import '../../../../constaints.dart';
import 'drawer_items.dart';
import 'user_information.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Drawer(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          UserInfo(size: size),
          Column(
            children: [
              DrawerItems(
                title: 'Home',
                icon: Icons.home,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: kPrimaryColor,
              ),
              DrawerItems(
                title: 'Categories',
                icon: Icons.menu_open_outlined,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: kPrimaryColor,
              ),
              SizedBox(
                height: size.height * 0.17,
              ),
              SizedBox(
                height: size.height * 0.33,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: kPrimaryColor,
              ),
              DrawerItems(
                title: 'About',
                icon: Icons.info_outline,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: kPrimaryColor,
              ),
              DrawerItems(
                title: 'Logout',
                icon: Icons.logout,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
