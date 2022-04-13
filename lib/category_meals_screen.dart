import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const RouteName = '/category-meals';

  final String ?categoryId;
  final String ?categoryTitle;
  final String ?categoryColor;
  const CategoryMealsScreen(this.categoryColor,this.categoryId,this.categoryTitle,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text(categoryTitle!)),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Text("");
      },itemCount: 9,)
    ) ;
  }
}
