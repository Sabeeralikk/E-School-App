import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_management/Screens/Exam/src/pages/home.dart';
import 'package:school_management/Screens/SpleashScreen.dart';

import 'Screens/Exam/src/components/route_builder.dart';
import 'Screens/Exam/src/constants/routes.dart';
import 'Screens/Exam/src/pages/note_form.dart';
import 'Screens/Exam/src/pages/view_note.dart';
import 'Screens/home.dart';
import 'Screens/timetable.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OUR SCHOOL',
      initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/add': (context) => NoteForm()
      // },
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name){
          case HOME:
            return SlideFromRightRoute(page: Homenote(FirebaseAuth.instance.currentUser.uid));
          case ADD_NOTE:
            return SlideFromRightRoute(page: NoteForm());
          case EDIT_NOTE:
            return SlideFromRightRoute(page: NoteForm());
          case VIEW_NOTE:
            return SlideFromRightRoute(page: MyNote());
          default:
            return SlideFromRightRoute(page: Home());
        }
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpleashScreen(),
    );
  }
}
