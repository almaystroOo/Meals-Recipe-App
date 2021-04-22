import 'package:flutter/material.dart';
import 'package:meals_app/ui/view/widgets/category_item.dart';

import '../../../3.2 dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
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
    );
  }
}
