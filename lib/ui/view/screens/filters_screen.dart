import 'package:flutter/material.dart';
import 'package:meals_app/ui/view/screens/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const String routeName = '/FiltersScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Container(
          child: Center(
        child: Text('Filters'),
      )),
    );
  }
}
