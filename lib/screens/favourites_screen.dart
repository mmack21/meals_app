import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favouritesMeals;

  FavouritesScreen(this.favouritesMeals);

  @override
  Widget build(BuildContext context) {
    if (favouritesMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet - start adding some'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouritesMeals[index].id,
            title: favouritesMeals[index].title,
            affordability: favouritesMeals[index].affordability,
            complexity: favouritesMeals[index].complexity,
            duration: favouritesMeals[index].duration,
            imageUrl: favouritesMeals[index].imageUrl,
          );
        },
        itemCount: favouritesMeals.length,
      );
    }
  }
}
