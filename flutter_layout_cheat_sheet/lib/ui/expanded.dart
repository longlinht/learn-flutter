import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded'),),
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.red),
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.yellow),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}

