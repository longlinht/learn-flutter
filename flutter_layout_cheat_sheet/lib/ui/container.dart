import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container'),),
      body: Container(
        child: Text('Hi'),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.yellow),
        foregroundDecoration: BoxDecoration(color: Colors.red.withOpacity(0.5)),
        transform: Matrix4.rotationZ(3.14/4),
      ),
    );
  }
}

