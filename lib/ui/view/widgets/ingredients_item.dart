import 'package:flutter/material.dart';

class IngredientsItem extends StatelessWidget {
  final List<String> items;
  final int index;
  const IngredientsItem({Key key, this.items, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 7),
      child: Card(
          color: Theme.of(context).accentColor,
          child: Text(
            items[index],
            style: Theme.of(context).textTheme.bodyText2,
          )),
    );
  }
}
