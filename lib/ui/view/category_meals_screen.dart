import 'package:flutter/material.dart';

class CategoryMeal extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;
  static const String routeName = '/recipeScreen';
  const CategoryMeal({
    Key key,
    // this.categoryId,
    // this.categoryTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final titleArg = routeArgs['title'];
    final idArg = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$titleArg Meals recipe',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Container(
        child: Text(
          'where you will see all $titleArg meals recipe !',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
  }
}
