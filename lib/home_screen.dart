import 'package:flutter/material.dart';
import 'details_screen.dart'; // Import the DetailsScreen
import 'recipe_model.dart'; // Import the Recipe model

class HomeScreen extends StatelessWidget {
  // List of recipes (hardcoded for now)
  final List<Recipe> recipes = [
    Recipe(
      name: 'Pasta',
      ingredients: 'Pasta, Tomato Sauce, Cheese',
      instructions: 'Boil pasta, add sauce, and sprinkle cheese.',
    ),
    Recipe(
      name: 'Pancakes',
      ingredients: 'Flour, Milk, Eggs, Sugar',
      instructions: 'Mix ingredients, cook on a pan, and serve.',
    ),
    Recipe(
      name: 'Salad',
      ingredients: 'Lettuce, Tomato, Cucumber, Dressing',
      instructions: 'Chop vegetables, mix, and add dressing.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'), // Title of the app bar
      ),
      body: ListView.builder(
        itemCount: recipes.length, // Number of recipes
        itemBuilder: (context, index) {
          final recipe = recipes[index]; // Get the recipe at the current index
          return ListTile(
            title: Text(recipe.name), // Display the recipe name
            onTap: () {
              // Navigate to the DetailsScreen when a recipe is tapped
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