import 'package:flutter/material.dart';

import 'components/intro_column.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: IntroColumn(),
    );
  }
}
