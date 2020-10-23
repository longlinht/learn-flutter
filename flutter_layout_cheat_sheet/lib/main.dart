import 'package:flutter/material.dart';
import 'package:flutter_layout_cheat_sheet/ui/instrinsic.dart';
import 'package:flutter_layout_cheat_sheet/ui/row_column.dart';
import 'package:flutter_layout_cheat_sheet/ui/stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Cheat Sheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Layout Cheat Sheet')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text('Row Column'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return RowColumnPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Intrinsic'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return IntrinsicPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Stack'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return StackPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

