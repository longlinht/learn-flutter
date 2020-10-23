import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';


class MaterialDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material'),),
      body: Center(
        child: Material(
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            side: BorderSide(color: Colors.black, width: 4)
          ),
          color: Colors.blue,
          child: Container(
            width: 200,
            height: 200,
          ),
        ),
      )
    );
  }
}

