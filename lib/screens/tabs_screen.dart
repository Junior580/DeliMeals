import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vamos Cozinhar?'),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.category), text: 'Categorias'),
            Tab(icon: Icon(Icons.star), text: 'Favoritos')
          ]),
        ),
        body: const TabBarView(children: [
          CategoriesScreen(),
          FavoriteScreen(),
        ]),
      ),
    );
  }
}
