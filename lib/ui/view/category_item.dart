import 'dart:ui';

import 'package:flutter/material.dart ';
// import 'package:flutter/services.dart';
import 'category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({Key key, this.id, this.title, this.color})
      : super(key: key);

  void navigator(BuildContext ctx) {
    Navigator.pushNamed(ctx, '/recipeScreen',
        arguments: {'id': id, 'title': title});
    // Navigator.of(ctx).push(MaterialPageRoute(
    //   builder: (_) => CategoryMeal(
    //     categoryId: id,
    //     categoryTitle: title,
    //   ),
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigator(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        //color: color,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color.withOpacity(0.7), color])),
      ),
    );
  }
}
