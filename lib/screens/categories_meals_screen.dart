import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ModalRoute? modalRoute = ModalRoute.of(context);
    final category = modalRoute?.settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(category.id))
        .toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
        ),
        body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (ctx, index) {
            return MealItem(
              meal: categoryMeals[index],
            );
          },
        ));
  }
}
