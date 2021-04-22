import 'package:flutter/material.dart';
import 'package:meals_app/models/meals.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/ui/view/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final List<Meal> meal;
  final Color color;
  final int index;

  const MealItem({Key key, this.meal, this.index, this.color})
      : super(key: key);

  String get complexityText {
    if (meal[index].complexity == Complexity.Simple) {
      return 'Simple';
    } else if (meal[index].complexity == Complexity.Challenging) {
      return 'Challenging';
    } else if (meal[index].complexity == Complexity.Hard) {
      return 'Hard';
    }
  }

//BAD PRACTISE
  String get affordabilityText {
    if (meal[index].affordability == Affordability.Affordable) {
      return 'Affordable';
    } else if (meal[index].affordability == Affordability.Pricey) {
      return 'Pricey';
    } else if (meal[index].affordability == Affordability.Luxurious) {
      return 'Luxurious';
    }
  }

//CLEAN CODE
  String get affordability {
    switch (meal[index].affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
      case Affordability.Pricey:
        return 'Pricy';
      default:
        return 'N/A';
    }
  }

  void navigateToDetail(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealDeatilScreen.route,
        arguments: {'index': index, 'meals': meal});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => navigateToDetail(context),
        child: Card(
          color: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      meal[index].imageUrl,
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    // width: MediaQuery.of(context).size.width),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 10,
                      child: Container(
                        width: 250,
                        color: Colors.black54,
                        child: Text(
                          meal[index].title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      )),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.schedule),
                        SizedBox(
                          width: 6,
                        ),
                        Text('${meal[index].duration.toString()} min'),
                        // SizedBox(
                        //   width: 20,
                        // ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.work),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$complexityText'),
                        // SizedBox(
                        //   width: 20,
                        // ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.monetization_on_outlined),
                        SizedBox(
                          width: 6,
                        ),
                        Text('$affordabilityText'),
                        // SizedBox(
                        //   width: 20,
                        // ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
