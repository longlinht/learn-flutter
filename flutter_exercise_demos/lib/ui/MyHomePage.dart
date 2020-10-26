import 'package:flutter/material.dart';
import 'package:flutter_exercise_demos/model/ListTileModel.dart';
import 'package:flutter_exercise_demos/ui/DropDownButtonPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
      ),
      body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    "Bottom Sheet",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    openBottomSheet(context);
                  },
                ),
                RaisedButton(
                  child: Text(
                    "DropDown Button",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator
                        .of(context)
                        .push(MaterialPageRoute(builder: (BuildContext context) {
                      return DropDownButtonPage();
                    }));
                  },
                )
              ],
            ),
          )
    );
  }
}

void openBottomSheet(context) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18))
  ),

  builder: (builder) {
      return new Container(
        child: Wrap(
          children: <Widget>[
            getListTile(Icons.more, Colors.black45, "More", context),
            getListTile(Icons.favorite, Colors.pink, "Favourites", context),
            getListTile(Icons.account_box, Colors.blue, "Profile", context),
            new Divider(
              thickness: 2.0,
              height: 10.0,
            ),
            getListTile(Icons.exit_to_app, null, "Logout", context),
          ],
        ),
      );
    },
  );
}