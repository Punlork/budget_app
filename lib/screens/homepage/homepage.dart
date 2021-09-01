import 'package:flutter/material.dart';

import './components/body.dart';
import '/constaints.dart';
import 'components/drawer.dart';

class Homepage extends StatelessWidget {
  static const routeName = '/Homepage';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(theme),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(child: Body()),
    );
  }

  AppBar buildAppBar(ThemeData theme) {
    return AppBar(
      elevation: 0,
      title: Container(
        width: 150,
        decoration: BoxDecoration(
          color: kLightColor,
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: Text(
          'Notifer',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: theme.accentColor,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add,
            size: 35,
          ),
        ),
      ],
    );
  }
}
