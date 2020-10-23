import 'package:flutter/material.dart';

class RowColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Column')),
      // Row/Column MainAxisAlignment
      body:
          Container(
            color: Colors.yellow,
            child: Row /*Column*/(
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,

              //crossAxisAlignment: CrossAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.favorite, size: 50),
                  Icon(Icons.favorite, size: 50),
                  Icon(Icons.favorite, size: 50),
                ]
            ),
          )
      // Row/Column MainAxisAlignment
      /*
      body: Row /*Column*/(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: <Widget>[
            Text('Baseline',
              style: Theme.of(context).textTheme.display3,
            ),
            Text('Baseline',
              style: Theme.of(context).textTheme.body1,
            ),
          ]
      ),
       */

    );
  }
}

