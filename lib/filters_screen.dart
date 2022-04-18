import 'package:flutter/material.dart';
import 'package:meals_app/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);
  static const RouteName = "FilterScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("filters"),),
      drawer: MainDrawer(),
    );
  }
}
