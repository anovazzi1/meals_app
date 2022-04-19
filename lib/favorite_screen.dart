import 'package:flutter/material.dart';

import 'meal_item.dart';
import 'models/meal.dart';
class FavoritesScreen extends StatelessWidget {
  final List<Meal> favorites;
  const FavoritesScreen(this.favorites, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return MealItem(
            favorites[index].title,
            favorites[index].imageUrl,
            favorites[index].duration,
            favorites[index].complexity,
            favorites[index].id);
      },
      itemCount: favorites.length,
    );
  }
}
