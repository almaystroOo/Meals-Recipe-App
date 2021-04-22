import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import '../widgets/ingredients_item.dart';

class MealDeatilScreen extends StatelessWidget {
  //final String title;
  // final int index;
  // final List<Meal> meals;

  const MealDeatilScreen({Key key}) : super(key: key);
  static const String route = '/meadDetailScreen';

  // Meal get meal => meals[index];
  @override
  Widget build(BuildContext context) {
    //
    final arguments =
        ModalRoute.of(context).settings.arguments as Map<dynamic, dynamic>;
    final int index = arguments['index'];
    final meals = arguments['meals'];
    final Meal meal = meals[index];
    //Meal get meal() => meals;
    //Meal get meal => meals[index];
    print(' fucking meal : ${meal}');
    return Scaffold(
        appBar: AppBar(
          title: Text('${meal.title}'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.85,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Ingredients',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              height: 150,
              width: 300,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return IngredientsItem(
                        items: meal.ingredients, index: index);
                  },
                  itemCount: meal.ingredients.length),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Steps',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              height: 150,
              width: 300,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: Text(
                          '# ${index + 1}',
                          style: TextStyle(
                              color: Theme.of(context).primaryColorLight),
                        ),
                      ),
                      title: Text(meal.steps[index]),
                      trailing: Icon(Icons.check),
                    );
                    //return IngredientsItem(items: meal.steps, index: index);
                  },
                  itemCount: meal.steps.length),
            ),
          ],
        )
            // Container(
            //   child:
            //   // Card(
            //   //   color: Theme.of(context).primaryColor,
            //   //   child:
            //   //    Center(
            //   //     child: Text(
            //   //         'Welcome to ${meals[index].title} deatails page ! hooola '),
            //   //   ),
            //   // ),
            // ),
            //
            ));
  }
}
