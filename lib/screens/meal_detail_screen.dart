import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ModalRoute? modalRoute = ModalRoute.of(context);
    final meal = modalRoute?.settings.arguments as Meal;

    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: const Center(child: Text('Detalhes da refeição')));
  }
}
