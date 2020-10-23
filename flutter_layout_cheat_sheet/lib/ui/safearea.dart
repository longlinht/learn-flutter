import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';


class SafeAreaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SafeArea'),),
      body: Material(
        color: Colors.blue,
        child: SafeArea(
          child: SizedBox.expand(
            child: Card(
              color: Colors.yellowAccent,
            ),
          ),
        ),
      )
    );
  }
}

