import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  primarySwatch: Colors.pink,
  canvasColor: Colors.white,
  fontFamily: 'Raleway',
  textTheme: ThemeData.light().textTheme.copyWith(
        bodyText1: const TextStyle(color: Colors.black54),
        bodyText2: const TextStyle(color: Colors.black45),
        headline6: const TextStyle(fontSize: 24,fontFamily: 'Roboto')), 
);
