import 'package:flutter/material.dart';

import './categories_list.dart';
import '../../../constaints.dart';
import './half_top_widget.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        HalfTop(size: size),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          width: 150,
          child: Text(
            'Categories List',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Container(
          height: 2,
          width: 150,
          color: kLightColor,
        ),
        SizedBox(
          height: size.height * 0.3,
          child: CategoriesItems(),
        ),
      ],
    );
  }
}
