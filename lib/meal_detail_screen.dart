import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const mealRoute = '/mealDetail';
  const MealDetailScreen({Key? key}) : super(key: key);

  Widget buildSteps(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white38,
          border: Border.all(color: Colors.black45, width: 2.0),
          borderRadius: BorderRadius.circular(10)),
      height: 200,
      width: MediaQuery.of(context).size.width * 0.8,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 300,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    selectedMeal.imageUrl,
                    fit: BoxFit.contain,
                  ),
                )),
            Container(
              child: Text('Ingredients',
                  style: Theme.of(context).textTheme.headline6),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white38,
                  border: Border.all(color: Colors.black45, width: 2.0),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ListView.builder(
                itemBuilder: (Itembuilder, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      selectedMeal.ingredients[index],
                      style: Theme.of(context).textTheme.bodyText1,
                      textScaleFactor: 1.5,
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            Container(
              child:
                  Text('Steps', style: Theme.of(context).textTheme.headline6),
            ),
            buildSteps(
              context,
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text("${index + 1}"),
                    ),
                    title: Text("${selectedMeal.steps[index]}"),
                  );
                },
                itemCount: selectedMeal.steps.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
