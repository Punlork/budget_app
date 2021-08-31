import 'package:flutter/material.dart';

import '../../../constaints.dart';

class HalfTop extends StatelessWidget {
  const HalfTop({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          recentItem(context),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: kDefualtPadding,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: kDefualtPadding - 25,
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
          ),
        ],
      ),
    );
  }

  Column recentItem(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 2,
          width: double.infinity,
          color: kLightColor,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          child: Text(
            'Recently Added',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: kWhiteTextColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Container(
          height: 3,
          width: 180,
          color: kLightColor,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('lib/assets/images/Giant.jpg'),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: Giant G440XZ',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Price: 500\$',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        color: kWhiteTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Date: 30 August 2021',
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
                    'Road bicycles are designed to be ridden fast on smooth pavement. They have smooth, skinny tires and "drop" handlebars, and can be used for on-road racing. They are usually lighter than other types of bicycles. They can be ridden on paved trails, but most people find them uncomfortable and unstable on unpaved trails. Most road bikes are not capable of carrying heavy loads, so are not very suitable for commuting or touring',
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
        ),
      ],
    );
  }
}
