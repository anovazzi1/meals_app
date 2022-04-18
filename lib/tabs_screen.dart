import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/main_drawer.dart';

import 'favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, //number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meals App'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                  text: "Category",
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: "Favorites",
                )
              ], //the two tabs we selected
            ),
          ),
          body: TabBarView(children: [
            CategoriesScreen(),
            FavoritesScreen()
          ],),
        drawer: MainDrawer(),
        ),
    );
  }
}
