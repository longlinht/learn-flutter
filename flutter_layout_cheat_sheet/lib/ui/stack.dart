import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    Widget main = Scaffold(
      appBar: AppBar(title: Text('Stack'),),
    );

    return Stack(
      fit: StackFit.expand,
      children: [
        main,
        Banner(
          message: "Top Start",
          location: BannerLocation.topStart,
        ),
        Banner(
          message: "Top End",
          location: BannerLocation.topEnd,
        ),
        Banner(
          message: "Bottom Start",
          location: BannerLocation.bottomStart,
        ),
        Banner(
          message: "Bottom End",
          location: BannerLocation.bottomEnd,
        )
      ],
    );
     */
    /*
    return Scaffold(
      appBar: AppBar(title: Text('Stack'),),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Material(color: Colors.yellowAccent,),
          Positioned(
            top: 0,
            left: 0,
            child: Icon(Icons.star, size: 50),
          ),
          Positioned(
            top: 540,
            left: 250,
            child: Icon(Icons.call, size: 50),
          )
        ],
      ),
    );
     */
    const iconSize = 50;

    return Scaffold(
      appBar: AppBar(title: Text('Stack with LayoutBuilder'),),
      body: LayoutBuilder(
        builder: (context, constraints) =>
            Stack(
              fit: StackFit.expand,
              children: [
                Material(color: Colors.yellowAccent,),
                Positioned(
                  top: 0,
                  child: Icon(Icons.star, size: 50),
                ),
                Positioned(
                  top: constraints.maxHeight - iconSize,
                  left: constraints.maxWidth - iconSize,
                  child: Icon(Icons.call, size: 50),
                )
              ],
            ),
      ),
    );

  }
}

