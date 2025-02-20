// details_screen.dart
import 'package:flutter/material.dart';
import 'recipe_model.dart'; // Import the Recipe model

class DetailsScreen extends StatelessWidget {
  final Recipe recipe; // The selected recipe to display

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name), // Display the recipe name in the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add some padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
          children: [
            Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(recipe.ingredients), // Display the ingredients
            SizedBox(height: 20), // Add some spacing
            Text(
              'Instructions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(recipe.instructions), // Display the instructions
          ],
        ),
      ),
    );
  }
}