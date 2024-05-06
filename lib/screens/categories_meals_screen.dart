import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/meal.dart';
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;
  const CategoriesMealsScreen({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    final ModalRoute? modalRoute = ModalRoute.of(context);
    final category = modalRoute?.settings.arguments as Category;

    final categoryMeals = meals
        .where((element) => element.categories.contains(category.id))
        .toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
          backgroundColor: Theme.of(context).primaryColor,
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
