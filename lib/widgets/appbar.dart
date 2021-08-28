import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Notifer',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: theme.accentColor,
        ),
      ),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(
          kToolbarHeight,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: theme.accentColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: Icon(
                    Icons.search,
                    color: theme.primaryColor,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                ),
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
                color: theme.accentColor,
                iconSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
