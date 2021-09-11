import 'package:flutter/material.dart';

import '../../../../constaints.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kWhiteTextColor,
        ),
        textAlign: TextAlign.start,
      ),
      onTap: () {
        print('Home');
      },
      trailing: Icon(
        icon,
        size: 30,
        color: kWhiteTextColor,
      ),
    );
  }
}
