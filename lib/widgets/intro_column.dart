import 'package:budget_app/screens/homepage.dart';
import 'package:flutter/material.dart';

class IntroColumn extends StatelessWidget {
  const IntroColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://play-lh.googleusercontent.com/M0HFyRzZamsOTi94PfHAVKg_FrIHHOoAYCJeU5wMzWxgukn71QbOrBOzrHnZGFJYbBqo',
                ),
              ),
            ),
          ),
        ),
        Text(
          'All the things that you spend on',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        Text(
          'See where did you money go',
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () => Navigator.of(context).pushNamed(Homepage.routeName),
          child: Container(
            height: 50,
            width: 350,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              "Let's Start",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
