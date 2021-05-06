import 'package:flutter/material.dart';
import 'package:school_management/Screens/home.dart';
import 'package:school_management/Widgets/DrawerListTile.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerListTile(
            imgpath: "home.png",
            name: "Home",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Home(),
                ),
              );
            }),
        DrawerListTile(
          imgpath: "attendance.png",
          name: "Attendance",
          ontap: () {},
        ),
      ],
    );
  }
}
