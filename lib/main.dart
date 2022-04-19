import 'package:flutter/material.dart';
import 'package:meals_app/categories_screen.dart';
import 'package:meals_app/category_meals_screen.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/filters_screen.dart';
import 'package:meals_app/meal_detail_screen.dart';
import 'package:meals_app/tabs_screen.dart';
import 'package:meals_app/themeConfig.dart';

import 'models/meal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String,bool> _filters = {
    'vegetarian':false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  void _setFilters(Map<String,bool> filterData)
  {
    _filters = filterData;

    _availableMeals= DUMMY_MEALS.where((element) => !_filters['vegetarian']! || (element.isVegetarian == _filters['vegetarian']) ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DayliMeals',
      routes: {
        '/': (context)=>TabsScreen(),
        CategoryMealsScreen.RouteName: (context)=> CategoryMealsScreen(availableMeals: _availableMeals,),
        MealDetailScreen.mealRoute: (context) => MealDetailScreen(),
        FilterScreen.RouteName: (context) => FilterScreen(_filters['vegetarian']!,_setFilters)
      },

      theme: theme.copyWith(colorScheme: theme.colorScheme.copyWith(secondary: Colors.amber)),
    );
  }
}