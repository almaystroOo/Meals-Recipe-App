import 'package:flutter/material.dart';
import 'package:meals_app/ui/view/screens/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const String routeName = '/FiltersScreen';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegtarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _switchTile(
      var value, String title, String subtitle, Function function) {
    return SwitchListTile(
        value: value,
        title: Text(title),
        subtitle: Text(subtitle),
        onChanged: function);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your Filtters ',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // SwitchListTile(
                //   value: _glutenFree,
                //   title: Text('test'),
                //   subtitle: Text('only ofr test only'),
                //   onChanged: (newValue) {
                //     setState(() {
                //       _glutenFree = newValue;
                //     });
                //   },
                // ),
                _switchTile(
                    _glutenFree, 'Gluten-Free', 'only gluteen Free meals ',
                    (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _switchTile(
                    _lactoseFree, 'lactos-Free', 'only lactose Free meals ',
                    (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
                _switchTile(_vegan, 'is vegan ', 'only is vegan meals ',
                    (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                }),
                _switchTile(
                    _vegtarian, 'is vegtarian ', 'only is vegtarian meals ',
                    (newValue) {
                  setState(() {
                    _vegtarian = newValue;
                  });
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
