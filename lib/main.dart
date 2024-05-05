import 'package:flutter/material.dart';

import 'screens/categories_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/settings_screen.dart';

import 'utils/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primaryColor: Colors.pink,
          fontFamily: 'Raleway',
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                  titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              )),
          colorScheme:
              const ColorScheme.light().copyWith(secondary: Colors.amber)),
      routes: {
        AppRoutes.HOME: (ctx) => const TabScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => const SettingsScreen(),
      },
    );
  }
}
