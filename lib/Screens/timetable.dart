import 'package:flutter/material.dart';
String t1= "bio", t2="physics", t3="maths", t4="geo", t5="evs", t6="english", t7="chem", t8="IT", t9="history", t10="civics",
    t11="physics", t12="PE", t13="maths", t14="L&D", t15="bio";


class Timetable2 extends StatefulWidget {
  @override
  _Table2Example createState() => _Table2Example();
}

class _Table2Example extends State<Timetable2> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Timetable'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(70.0),
                border: TableBorder.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2),
                children: [
                  TableRow(children: [
                    Column(children: [
                      Text('Monday', style: TextStyle(fontSize: 12.0))
                    ]),
                    Column(children: [
                      Text('Tuesday', style: TextStyle(fontSize: 12.0))
                    ]),
                    Column(children: [
                      Text('Wednesday', style: TextStyle(fontSize: 11.0))
                    ]),
                    Column(children: [
                      Text('Thursday', style: TextStyle(fontSize: 12.0))
                    ]),
                    Column(children: [
                      Text('Friday', style: TextStyle(fontSize: 12.0))
                    ]),
                  ]),
                  TableRow(children: [
                    Column(children: [TextField(onChanged: (value) => t1 = value)]),
                    Column(children: [TextField(onChanged: (value) => t2 = value)]),
                    Column(children: [TextField(onChanged: (value) => t3 = value)]),
                    Column(children: [TextField(onChanged: (value) => t4 = value)]),
                    Column(children: [TextField(onChanged: (value) => t5 = value)]),
                  ]),
                  TableRow(children: [
                    Column(children: [TextField(onChanged: (value) => t6 = value)]),
                    Column(children: [TextField(onChanged: (value) => t7 = value)]),
                    Column(children: [TextField(onChanged: (value) => t8 = value)]),
                    Column(children: [TextField(onChanged: (value) => t9 = value)]),
                    Column(children: [TextField(onChanged: (value) => t10 = value)]),
                  ]),
                  TableRow(children: [
                    Column(children: [TextField(onChanged: (value) => t11 = value)]),
                    Column(children: [TextField(onChanged: (value) => t12 = value)]),
                    Column(children: [TextField(onChanged: (value) => t13 = value)]),
                    Column(children: [TextField(onChanged: (value) => t14 = value)]),
                    Column(children: [TextField(onChanged: (value) => t15 = value)]),
                  ]),
                ],
              ),
            ),
          ]))),
    );
  }
}

class Timetable extends StatefulWidget {
  @override
  _TableExample createState() => _TableExample();
}

class _TableExample extends State<Timetable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Timetable'),
          ),
          body: Center(
              child: Column(children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: Table(
                    defaultColumnWidth: FixedColumnWidth(70.0),
                    border: TableBorder.all(
                        color: Colors.black, style: BorderStyle.solid, width: 2),
                    children: [
                      TableRow(children: [
                        Column(children: [
                          Text('Monday', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold))
                        ]),
                        Column(children: [
                          Text('Tuesday', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold))
                        ]),
                        Column(children: [
                          Text('Wednesday', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold))
                        ]),
                        Column(children: [
                          Text('Thursday', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold))
                        ]),
                        Column(children: [
                          Text('Friday', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold))
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text("$t1")]),
                        Column(children: [Text("$t2")]),
                        Column(children: [Text("$t3")]),
                        Column(children: [Text("$t4")]),
                        Column(children: [Text("$t5")]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text("$t6")]),
                        Column(children: [Text("$t7")]),
                        Column(children: [Text("$t8")]),
                        Column(children: [Text("$t9")]),
                        Column(children: [Text("$t10")]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text("$t11")]),
                        Column(children: [Text("$t12")]),
                        Column(children: [Text("$t13")]),
                        Column(children: [Text("$t14")]),
                        Column(children: [Text("$t15")]),
                      ]),
                    ],
                  ),
                ),
                TextButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Timetable2(),
                    ));}, child: Text("Edit Table")),
              ]))),
    );
  }
}

