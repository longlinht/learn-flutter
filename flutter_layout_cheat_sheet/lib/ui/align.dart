import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';


class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Always when your widget does not listen to the constraints that you try to set up, first try to wrap it with Align.
          Align(
            child: RaisedButton(onPressed: () {},
              child: Text("Align, without align"),),
          )
        ],
      ),
    );
  }
}

