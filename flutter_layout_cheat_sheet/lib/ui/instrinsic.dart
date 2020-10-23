import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class IntrinsicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Instrinsic')),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RaisedButton(
                onPressed: (){ },
                child: Text('Short'),
              ),
              RaisedButton(
                onPressed: (){ },
                child: Text('A bit longer'),
              ),
              RaisedButton(
                onPressed: (){ },
                child: Text('The longest text button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

