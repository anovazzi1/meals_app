import 'package:flutter/material.dart';
import 'package:meals_app/category.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, childAspectRatio: 1.5,crossAxisSpacing: 20,mainAxisSpacing: 20),
      children: [...DUMMY_CATEGORIES.map((e) => CategoryItem(e.title, e.color)).toList()],
    );
  }
}
