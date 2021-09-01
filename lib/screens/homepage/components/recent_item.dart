import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constaints.dart';
import '/providers/items_provider.dart';

class Recentitem extends StatelessWidget {
  const Recentitem({
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
          onTap: () {
            print('Recent Item');
          },
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(
              firstItem[0].imageUrl,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${firstItem[0].title}',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kWhiteTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Price: ${firstItem[0].price}\$',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: kWhiteTextColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Date: ${firstItem[0].date}',
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
                '${firstItem[0].description}',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: kWhiteTextColor,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
