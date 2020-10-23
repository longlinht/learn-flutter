import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class ConstrainedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ConstrainedBox'),),
      /*
      body: const Card(
          child: const Text('Hello world'),
          color: Colors.yellow,
        ),
      );
       */
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(height: 300),
        child: const Card(
          child: const Text('Hello world'),
          color: Colors.yellow,
          elevation: 10,
        ),
      ),
    );
  }
}

