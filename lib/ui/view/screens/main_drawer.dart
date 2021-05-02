import 'package:flutter/material.dart';

import 'filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget _listTile(
      String title, IconData icon, BuildContext ctx, Function onTap) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(ctx).textTheme.headline6,
      ),
      leading: Icon(icon),
      onTap: onTap,
    );
  }

  void _navigateToFilters(ctx) {
    Navigator.of(ctx).pushReplacementNamed(FiltersScreen.routeName);
  }

  void _navigateToMeals(ctx) {
    Navigator.of(ctx).pushReplacementNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            alignment: Alignment.centerLeft,
            child: Text(
              'The Coocking !',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _listTile('Meal', Icons.restaurant, context,
              () => _navigateToMeals(context)),
          _listTile('Filters', Icons.settings, context,
              () => _navigateToFilters(context))
        ],
      ),
    );
  }
}
