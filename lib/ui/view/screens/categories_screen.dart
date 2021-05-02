import 'package:flutter/material.dart';
import 'package:meals_app/3.2%20dummy_data.dart';
import 'package:meals_app/ui/view/screens/main_drawer.dart';
import 'package:meals_app/ui/view/widgets/category_item.dart';
import '../screens/Favourite_Meal_Screen.dart';
import 'category_screen.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // Widget CategoriesScreen() {

  // }

  final List<Map<String, Object>> _pages = [
    {'page': CategoriesPage(), 'title': 'Categories'},
    {'page': FavouriteMealScreen(), 'title': 'Favourite'}
  ];
  int _selectedIndex = 0;
  void _selectedTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // if (index == 0) {
    //   return categoriesScreen();
    // } else if (index == 1) {
    //   return FavouriteMealScreen();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedIndex]['title']),
          // actions: [

          // ],
        ),
        drawer: MainDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Theme.of(context).accentColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.category),
                backgroundColor: Colors.black,
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'Favourite'),
          ],
          //unselectedItemColor: Colors.black87,
          // selectedItemColor: Colors.limeAccent,
          onTap: _selectedTap,
        ),
        body: _pages[_selectedIndex]['page']);

    // Scaffold(
    //   appBar: AppBar(
    //     title: Text('Meals'),
    //   ),

    //   bottomNavigationBar: AppBar(
    //     bottom: TabBar(
    //       tabs: [
    //         Icon(
    //           Icons.category,
    //         ),
    //         Icon(Icons.favorite)
    //       ],
    //     ),
    //   ),
    //   body: TabBarView(
    //       //physics: ,
    //       //controller: ,
    //       children: [
    //         categoriesScreen(),
    //         FavouriteMealScreen(),
    //       ]),

    //   // DefaultTabController(
    //   //   length: 2,
    //   //   child: TabBarView(
    //   //       //physics: ,
    //   //       //controller: ,
    //   //       children: [
    //   //         categoriesScreen(),
    //   //         FavouriteMealScreen(),
    //   //       ]),
    //   // ),
    // );
  }
}
