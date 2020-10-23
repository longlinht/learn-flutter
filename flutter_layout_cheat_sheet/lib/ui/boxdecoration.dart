import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class BoxDecorationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BoxDecoration'),),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.yellow,
            //border: Border.all(color: Colors.black, width: 3),
            //borderRadius: BorderRadius.all(Radius.circular(18)),
            //shape: BoxShape.circle,

            /*
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                'https://flutter.io/images/catalog-widget-placeholder.png',
              ),
            )
            boxShadow: const [
              BoxShadow(
                blurRadius: 10
              )
            ]
            gradient: LinearGradient(
              colors: const [
                Colors.red,
                Colors.blue,
              ]
            )
            gradient: RadialGradient(
              colors: const [ Colors.yellow, Colors.blue ],
              stops: const [ 0.8, 1.0 ]
            )
            gradient: SweepGradient(
                colors: const [
                  Colors.blue,
                  Colors.green,
                  Colors.yellow,
                  Colors.red,
                  Colors.blue,
                ],
                stops: const [ 0.0, 0.25, 0.5, 0.75, 1.0 ]
            )
             */
          ),
          foregroundDecoration: BoxDecoration(
              backgroundBlendMode: BlendMode.clear,
              gradient: LinearGradient(
                  colors: const [
                    Colors.red,
                    Colors.blue,
              ]
              )
          ),
          child: Image.network('https://flutter.io/images/catalog-widget-placeholder.png'),
        ),
      ),
    );

  }
}

