import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/category_meals_screen.dart';
import 'package:meals_app/filters_screen.dart';
import 'package:meals_app/models/meal_detail_screen.dart';
import 'package:meals_app/tabs_screen.dart';
import 'package:meals_app/themeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DayliMeals',
      routes: {
        '/': (context)=>TabsScreen(),
        CategoryMealsScreen.RouteName: (context)=> CategoryMealsScreen(),
        MealDetailScreen.mealRoute: (context) => MealDetailScreen(),
        FilterScreen.RouteName: (context) => FilterScreen()
      },

      theme: theme.copyWith(colorScheme: theme.colorScheme.copyWith(secondary: Colors.amber)),
    );
  }
}