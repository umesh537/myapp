import 'package:flutter/material.dart';
import 'package:myapp/widgets/item_widget.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:myapp/models/catalog.dart';

class AllPlans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Container(
      child: Text(
        "This is the plans page",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
