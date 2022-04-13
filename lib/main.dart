import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/category_meals_screen.dart';
import 'package:meals_app/themeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    return MaterialApp(
      title: 'DayliMeals',
      routes: {
        CategoryMealsScreen.RouteName: (context)=> CategoryMealsScreen(args['color'],args['id'],args['title'])
      },

      theme: theme.copyWith(colorScheme: theme.colorScheme.copyWith(secondary: Colors.amber)),
      home: Scaffold(
        body: CategoriesScreen(),

        appBar: AppBar(title: const Text("meals app"),),
      ),
    );
  }
}