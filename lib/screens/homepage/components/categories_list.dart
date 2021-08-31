import 'package:flutter/material.dart';

import '../../../constaints.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: EdgeInsets.all(8.0),
        children: [
          categoryImages('lib/assets/images/Giant.jpg', 'Transportation'),
          categoryImages('lib/assets/images/index1.jpg', 'Shoes '),
          categoryImages('lib/assets/images/index.jpg', 'Electronic Devices'),
        ],
      ),
    );
  }

  Padding categoryImages(String imageUrl, String title) {
    return Padding(
      padding: const EdgeInsets.all(kDefualtPadding - 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              color: kWhiteTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
