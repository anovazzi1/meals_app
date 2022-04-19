import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;

  MealItem(this.title, this.imageUrl, this.duration, this.complexity,this.id);

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(MealDetailScreen.mealRoute,arguments: id);
  }

  String get complexityText {
    if(complexity == Complexity.Simple)
        return 'simple';
    else if(complexity == Complexity.Challenging)
      return 'Challenging';
    else
      return 'Hard';
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 250,
                    color: Colors.white54,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                      overflow: TextOverflow.fade,
                      softWrap: true,
                    ),
                  ),
                  bottom: 20,
                  left: 0,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.schedule),
                    Text('${duration}',style: Theme.of(context).textTheme.headline6,)
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.work),
                      Text(complexityText,style: Theme.of(context).textTheme.headline6,)
                    ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
