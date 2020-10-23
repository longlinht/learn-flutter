import 'package:flutter/material.dart';
import 'package:flutter_layout_cheat_sheet/ui/align.dart';
import 'package:flutter_layout_cheat_sheet/ui/boxdecoration.dart';
import 'package:flutter_layout_cheat_sheet/ui/constrainedbox.dart';
import 'package:flutter_layout_cheat_sheet/ui/container.dart';
import 'package:flutter_layout_cheat_sheet/ui/expanded.dart';
import 'package:flutter_layout_cheat_sheet/ui/instrinsic.dart';
import 'package:flutter_layout_cheat_sheet/ui/material.dart';
import 'package:flutter_layout_cheat_sheet/ui/row_column.dart';
import 'package:flutter_layout_cheat_sheet/ui/safearea.dart';
import 'package:flutter_layout_cheat_sheet/ui/sizedbox.dart';
import 'package:flutter_layout_cheat_sheet/ui/sliver.dart';
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
            RaisedButton(
              child: Text('Expanded'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ExpandedPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('ConstrainedBox'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ConstrainedBoxPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Align'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ContainerPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Container'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ContainerPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('BoxDecoration'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return BoxDecorationPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('Material'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return MaterialDemo();
                }));
              },
            ),
            RaisedButton(
              child: Text('Sliver'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return SliverPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('SizedBox'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return SizedBoxPage();
                }));
              },
            ),
            RaisedButton(
              child: Text('SafeArea'),
              onPressed: () {
                Navigator
                    .of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return SafeAreaPage();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}

