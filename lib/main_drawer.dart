import 'package:flutter/material.dart';
import 'package:meals_app/filters_screen.dart';
import 'package:meals_app/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.secondary,
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(12),
            alignment: Alignment.centerLeft,
            child: Text(
              "Cooking up",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text(
              "meals",
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed("/");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text(
              "Filters",
              style: Theme.of(context).textTheme.headline6,
            ),
            onTap: (){
              Navigator.of(context).pushReplacementNamed(FilterScreen.RouteName);
            },
          )
        ],
      ),
    );
  }
}
