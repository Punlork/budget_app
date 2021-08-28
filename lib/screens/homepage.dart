import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class Homepage extends StatelessWidget {
  static const routeName = '/Homepage';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Bar(theme: theme),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
