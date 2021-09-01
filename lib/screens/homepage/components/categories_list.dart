import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constaints.dart';
import '/providers/items_provider.dart';

class CategoriesItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemsData = Provider.of<Items>(context);
    final items = itemsData.items;
    return ListView.builder(
      itemBuilder: (ctx, index) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefualtPadding - 20,
          vertical: kDefualtPadding - 10,
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print('Recent Item');
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  items[index].imageUrl,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              alignment: Alignment.center,
              child: Text(
                items[index].category,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kWhiteTextColor,
                ),
                softWrap: true,
              ),
            )
          ],
        ),
      ),
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
