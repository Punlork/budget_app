import 'package:flutter/material.dart';

import '../../../../constaints.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightColor,
      height: size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('lib/assets/images/Monkey.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Jonas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kWhiteTextColor,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
