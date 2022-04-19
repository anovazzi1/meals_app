import 'package:flutter/material.dart';
import 'package:meals_app/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  final Function setFilter;
  final bool filterState;
  const FilterScreen(this.filterState,this.setFilter, {Key? key}) : super(key: key);
  static const RouteName = "FilterScreen";

  @override
  State<FilterScreen> createState() => _FilterScreenState();

}

class _FilterScreenState extends State<FilterScreen> {

  @override
  void initState() {
    actualState = widget.filterState;
    super.initState();
  }
  var actualState = false;

  void isSwitched(bool value){
    actualState = value;
    widget.setFilter({"vegetarian":value});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("filters"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              "Adjust your meals selection",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              SwitchListTile(
                title: Text("vegetarian"),
                value: actualState,

                onChanged: (bool newValue){
                  setState(() {
                    isSwitched(newValue);
                  });
                },
                subtitle: Text('Only plants and unhappy food'),
              )
            ],
          ))
        ],
      ),
    );
  }
}
