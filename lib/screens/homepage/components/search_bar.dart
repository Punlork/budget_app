import 'package:flutter/material.dart';

import '../../../constaints.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: kDefualtPadding + 20,
        ),
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            hintText: 'Search for items',
            hintStyle: TextStyle(
              color: kBackgroundColor.withOpacity(0.5),
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            suffixIcon: IconButton(
              padding: EdgeInsets.all(4),
              icon: Icon(Icons.search),
              color: kBackgroundColor,
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
