import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'recipe_model.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: 'Pasta',
      ingredients: 'Pasta, Tomato Sauce, Cheese',
      instructions: 'Boil pasta, add sauce, and sprinkle cheese.',
      image: 'assets/images/k_Photo_Recipes_2023-01-Caramelized-Tomato-Paste-Pasta_06-CARAMELIZED-TOMATO-PASTE-PASTA-039.jpg',
    ),
    Recipe(
      name: 'Pancakes',
      ingredients: 'Flour, Milk, Eggs, Sugar',
      instructions: 'Mix ingredients, cook on a pan, and serve.',
      image: 'assets/images/21014-Good-old-Fashioned-Pancakes-mfs_002-0e249c95678f446291ebc9408ae64c05.jpg',
    ),
    Recipe(
      name: 'Salad',
      ingredients: 'Lettuce, Tomato, Cucumber, Dressing',
      instructions: 'Chop vegetables, mix, and add dressing.',
      image: 'assets/images/caesar-salad.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(recipe.image),
            ),
            title: Text(recipe.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
    );
  }
}