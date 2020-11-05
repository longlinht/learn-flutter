
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrawerPage extends StatefulWidget {

  @override
  DrawerPageState createState() => DrawerPageState();
}

class DrawerPageState extends State<DrawerPage> {

  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(
        child: Text("Header"),
    );
    var aboutChild = AboutListTile(
        child: Text("About"),
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: Icon(Icons.adb),
        icon: Icon(Icons.info));

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          Fluttertoast.showToast(
              msg: routeName,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 3,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );

          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();

          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Settings", "Settings"),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", "Account"),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text('Drawer demo')
      ),
      drawer: getNavDrawer(context),
    );
  }
}
