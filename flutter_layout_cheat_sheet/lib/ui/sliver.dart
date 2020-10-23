import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';


class SliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliver'),),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(const [
              ListTile(title: Text('First item')),
              ListTile(title: Text('Second item')),
              ListTile(title: Text('Third item')),
              ListTile(title: Text('Fourth item')),
            ]),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(size: 200,),
                Text('This is some longest text that should be centered'
                'together with the logo',
                  textAlign: TextAlign.center)
              ],
            ),
          )
        ],
      )
    );
  }
}

