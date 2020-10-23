
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownButtonPage extends StatefulWidget {

  @override
  DropDownButtonPageState createState() => DropDownButtonPageState();
}

class DropDownButtonPageState extends State<DropDownButtonPage> {

  List fruits = ["Apple", "Banana", "Pineapple", "Mango", "Grapes"];

  List<DropdownMenuItem<String>> dropDownMenuItems;
  String selected;

  @override
  void initState() {
    dropDownMenuItems = buildAndGetDropDownMenuItems(fruits);
    selected = dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = List();
    for (String fruit in fruits) {
      items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      selected = selectedFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text('Please select a fruit:'),
            SizedBox(height: 10,),
            DropdownButton(
              value: selected,
                items: dropDownMenuItems,
                onChanged: changedDropDownItem
            )
          ],
        ),
      ),
    );
  }
}
