import 'package:flutter/material.dart';
import 'package:meals_app/3.2%20dummy_data.dart';
import 'package:meals_app/ui/view/category_item.dart';
import '../../models/category.dart';

class Categories extends StatefulWidget {
  Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
        ),
        body: GridView(
          padding: EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES
              .map((item) => CategoryItem(
                    id: item.id,
                    title: item.title,
                    color: item.color,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
