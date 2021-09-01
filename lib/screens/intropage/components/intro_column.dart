import 'package:budget_app/constaints.dart';
import 'package:budget_app/screens/homepage/homepage.dart';
import 'package:flutter/material.dart';

class IntroColumn extends StatefulWidget {
  const IntroColumn({
    Key? key,
  }) : super(key: key);

  @override
  _IntroColumnState createState() => _IntroColumnState();
}

class _IntroColumnState extends State<IntroColumn> {
  void press() {
    setState(() {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(Homepage.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'lib/assets/images/Monkey.png',
            ),
            radius: 150,
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
          onTap: () => press(),
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
                color: KBlackTextColor,
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
