import 'package:flutter/material.dart';

import '../../../constaints.dart';

class AddItemFields extends StatelessWidget {
  const AddItemFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            buildItemTextField(size, 'Title:', 'Bike', Icons.title),
            buildItemTextField(size, 'Price:', '500\$', Icons.money_off),
            buildItemTextField(size, 'Type:', 'Vehicle', Icons.merge_type),
            buildItemTextField(
                size, 'Date:', '22/02/2021', Icons.date_range_outlined),
            buildItemTextField(size, 'Upload Picture:', 'Select', Icons.photo),
            SizedBox(
              height: size.height * 0.1,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: kLightColor,
                  fixedSize: Size(size.width * 0.5, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  )),
              onPressed: () {},
              child: Text(
                'Add',
                style: TextStyle(
                  color: kWhiteTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildItemTextField(
      Size size, String title, String hintText, IconData icons) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: kLightColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: kDefualtPadding - 30,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: kDefualtPadding - 35,
          ),
          height: 45,
          width: size.width * 0.7,
          decoration: BoxDecoration(
            color: kWhiteTextColor,
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: hintText,
              hintStyle: TextStyle(
                color: kBackgroundColor.withOpacity(0.5),
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: IconButton(
                padding: EdgeInsets.all(4),
                icon: Icon(icons),
                color: kBackgroundColor,
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
