import 'package:flutter/material.dart';

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
            title: Text('Time Table'),
          ),
          body: 
        
          Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(2),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Table(
                  
                  defaultColumnWidth: FixedColumnWidth(80.0),
                  border: TableBorder.all(
                      color: Colors.black, style: BorderStyle.solid, width: 1),
                  children: [
                    TableRow(children: [
                      Column(children: [
                        Text('MONDAY', style: TextStyle(fontSize: 15.0))
                      ]),
                      Column(children: [
                        Text('TUESDAY', style: TextStyle(fontSize: 15.0))
                      ]),
                       Column(children: [
                        Text('WEDNESDAY', style: TextStyle(fontSize: 15.0))
                      ]),
                       Column(children: [
                        Text('THURSDAY', style: TextStyle(fontSize: 15.0))
                      ]),
                       Column(children: [
                        Text('FRIDAY', style: TextStyle(fontSize: 15.0))
                      ]),
                     
                     
                    ]),
                    TableRow(children: [
                      Column(children: [Text('Javatpoint')]),
                      Column(children: [Text('Flutter')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                     
                    ]),
                    TableRow(children: [
                      Column(children: [Text('Javatpoint')]),
                      Column(children: [Text('MySQL')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      
                    ]),
                   
                    TableRow(children: [
                      Column(children: [Text('Javatpoint')]),
                      Column(children: [Text('ReactJS')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                     
                    ]),
                    TableRow(children: [
                      Column(children: [Text('Javatpoint')]),
                      Column(children: [Text('ReactJS')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      
                    ]),
                    TableRow(children: [
                      Column(children: [Text('Javatpoint')]),
                      Column(children: [Text('ReactJS')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                     
                    ]),
                    TableRow(children: [
                      Column(children: [Text('Javatpoint')]),
                      Column(children: [Text('ReactJS')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                     
                    ]),
                    TableRow(children: [
                      Column(children: [Text('Javatpoint')]),
                      Column(children: [Text('ReactJS')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                      Column(children: [Text('5*')]),
                     
                    ]),
                   
                  ],
                ),
              ),
            ),
          ]))),
    );
  }
}
