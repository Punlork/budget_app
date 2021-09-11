import 'package:flutter/material.dart';

import '../../../../constaints.dart';
import 'most_expensive_item.dart';

import 'recent_item.dart';
import 'search_bar.dart';

class HalfTop extends StatefulWidget {
  const HalfTop({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _HalfTopState createState() => _HalfTopState();
}

class _HalfTopState extends State<HalfTop> {
  bool recentText = false;
  bool mostExpensiveText = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * 0.5,
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
                    Container(
                      child: mostExpensiveText
                          ? Text(
                              'Most Expensive',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: kWhiteTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            )
                          : Text(
                              'Recently Added',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: kWhiteTextColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          recentText = !recentText;
                          mostExpensiveText = !mostExpensiveText;
                        });
                      },
                      icon: Icon(
                        Icons.navigate_before,
                        size: 35,
                        color: kWhiteTextColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          recentText = !recentText;
                          mostExpensiveText = !mostExpensiveText;
                        });
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
              Container(
                child: !recentText ? Recentitem() : MostExpensiveItem(),
              ),
            ],
          ),
          SearchBar(),
        ],
      ),
    );
  }
}
