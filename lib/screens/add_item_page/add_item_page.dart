import 'package:flutter/material.dart';

import '../../constaints.dart';
import 'components/add_item_lists.dart';

class AddItemPage extends StatelessWidget {
  const AddItemPage({Key? key}) : super(key: key);
  static const routName = '/addItemPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'Add Item',
          style: TextStyle(
            color: kWhiteTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: AddItemFields(),
    );
  }
}
