import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';


class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox'),),
      body: Column(
        children: [
          Icon(Icons.favorite, size: 50),
          Icon(Icons.favorite, size: 50),
          SizedBox(height: 100,),
          Icon(Icons.favorite, size: 50),
          Icon(Icons.favorite, size: 50),
        ],
      )
    );
  }
}

