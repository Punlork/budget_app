import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../constaints.dart';
import '/providers/items_provider.dart';

class MostExpensiveItem extends StatelessWidget {
  const MostExpensiveItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allitems = Provider.of<Items>(context);
    final firstItem = allitems.items;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(
              firstItem[1].imageUrl,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${firstItem[1].title}',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kWhiteTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Price: ${firstItem[1].price}\$',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kWhiteTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Date: ${firstItem[1].date}',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kWhiteTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 3,
              width: 200,
              color: kLightColor,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              child: Text(
                '${firstItem[1].description}',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: kWhiteTextColor,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
