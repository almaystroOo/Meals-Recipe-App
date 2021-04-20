import 'package:flutter/material.dart';
import 'package:meals_app/3.2%20dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/ui/view/screens/categories_screen.dart';
import 'package:meals_app/ui/view/widgets/meal_item.dart';

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
    final filtteredMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(idArg);
    }).toList();
    // List<Category> selctedCategory =
    //     DUMMY_CATEGORIES.where((cat) => cat.id == idArg).toList();
    // print('the selected category :  $selctedCategory ');

    return Scaffold(
        appBar: AppBar(
          title: Text(
            '$titleArg Meals recipe',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext ctx, index) {
            return MealItem(
              index: index,
              meal: filtteredMeals,
              // color: selctedCategory.,
            );
            // return Column(
            //   children: [Text(filtteredMeals[index].title), Divider()],
            // );
          },
          itemCount: filtteredMeals.length,
        ));
    //    Container(
    //     child:
    //   //    Text(
    //   //     'where you will see all $titleArg meals recipe !',
    //   //     style: Theme.of(context).textTheme.bodyText2,
    //   //   ),
    //   // ),
    // );
  }
}
