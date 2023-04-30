import 'package:flutter/material.dart';

class Functions{
  //For Example :
 static Map<String, int> meals = {
    "Shawerma": 40,
    'Burger': 30,
    'Pizza': 80,
    'Pasta': 50
  };

 var alphabaticalSorting =
    Map.fromEntries(meals.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));

    lowToHighPriceSortig() => Map.fromEntries(
    meals.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));
}