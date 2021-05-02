import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/ui/view/screens/categories_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/ui/view/screens/filters_screen.dart';
import 'ui/view/screens/category_meals_screen.dart';
import 'package:meals_app/ui/view/screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Colors.amber,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: GoogleFonts.raleway().fontFamily,
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily:
                    GoogleFonts.robotoCondensed(fontSize: 24).fontFamily,
              ))),
      home: Categories(),
      initialRoute: '/',
      routes: {
        CategoryMeal.routeName: (BuildContext context) => CategoryMeal(),
        MealDeatilScreen.route: (context) => MealDeatilScreen(),
        FiltersScreen.routeName: (context) => FiltersScreen()
      },
      // onGenerateRoute: (settings) {
      //   return settings;
      // },
    );
  }
}
