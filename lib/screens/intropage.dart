import 'package:flutter/material.dart';

import '../widgets/intro_column.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'Notifer',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: IntroColumn(),
    );
  }
}
