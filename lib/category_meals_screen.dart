import 'package:flutter/material.dart';
import 'package:meals_app/meal_item.dart';
import 'dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const RouteName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String? categoryId = args['id'];
    final String? categoryTitle = args['title'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: (Text(categoryTitle!)),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
                categoryMeals[index].title,
                categoryMeals[index].imageUrl,
                categoryMeals[index].duration,
                categoryMeals[index].complexity,
                categoryMeals[index].id);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
