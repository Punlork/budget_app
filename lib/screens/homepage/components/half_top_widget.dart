import 'package:flutter/material.dart';

import '../../../constaints.dart';
import 'recent_item.dart';
import 'search_bar.dart';

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
          Column(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recently Added',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: kWhiteTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(
                      onPressed: () {
                        print('back');
                      },
                      icon: Icon(
                        Icons.navigate_before,
                        size: 35,
                        color: kWhiteTextColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        print('next');
                      },
                      icon: Icon(
                        Icons.navigate_next,
                        size: 35,
                        color: kWhiteTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 3,
                width: 170,
                color: kLightColor,
              ),
              SizedBox(height: 20),
              Recentitem(),
            ],
          ),
          SearchBar(),
        ],
      ),
    );
  }
}
