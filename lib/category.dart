import 'package:flutter/material.dart';
import 'package:meals_app/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id,this.title, this.color, {Key? key}) : super(key: key);

  void SelectCategory(BuildContext context){
    Navigator.of(context).pushNamed(CategoryMealsScreen.RouteName,arguments: {'id':id,'title':title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: ()=>SelectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        child: Text(this.title,style: Theme.of(context).textTheme.headline6,),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
