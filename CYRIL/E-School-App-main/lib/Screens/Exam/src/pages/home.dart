// import 'package:school_management/Screens/Exam//src/pages/view_note.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:school_management/Screens/Exam/src/constants/routes.dart';
import 'package:school_management/services/UserModel.dart';

import '../components/drawer.dart';
// import '../models/note.dart';
// import 'note_form.dart';

class Homenote2 extends StatelessWidget {
  String exam;
  @override
  Widget build(BuildContext context) {
    // Provider.of<NoteModel>(context, listen: false).getAllNotesByName();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exam')
        ),
        body: Column(
          children: <Widget>[
            TextField(decoration: InputDecoration(labelText: "Add new exam:"), onChanged: (value) => exam = value),
            TextButton(onPressed: (){
              addExam(exam, FirebaseAuth.instance.currentUser.uid);
              Fluttertoast.showToast(
                  msg: "Exam added!",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            }, child: Text("Add")),
            // Expanded(
            //   child: new NoteListBuilder()
            // ),
          ],
        ),
        drawer: DrawerBuilder()
      ),
    );
  }
}

class Homenote extends StatefulWidget {
  final String documentId;

  Homenote(this.documentId);

  @override
  _PlacesVisitedState createState() => _PlacesVisitedState();
}

class _PlacesVisitedState extends State<Homenote> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(widget.documentId).get(),
      builder: (BuildContext context,
          AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Exam')
                ),
                body: Column(
                  children: <Widget>[
                    Text("Upcoming Exams:\n", textScaleFactor: 2),
                    Text("${data['Exams']}", textScaleFactor: 1.5),
                    Text("\n"),
                    // Expanded(
                    //   child: new NoteListBuilder()
                    // ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Ink(
                              decoration: const ShapeDecoration(
                                color: Colors.lightBlue,
                                shape: CircleBorder(),),
                              child: IconButton(
                                icon: Icon(Icons.add),
                                iconSize: 25,
                                color: Colors.white,
                                tooltip: 'Add Notes',
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Homenote2(),
                                      ));
                                },
                              )
                          )
                        ]
                    ),
                  ],
                ),
                drawer: DrawerBuilder()
            ),
          );
        }

        return Scaffold(body: Center(child: CircularProgressIndicator(),));
      },
    );
  }
}



// class NoteListBuilder extends Consumer<NoteModel> {
//   NoteListBuilder() :
//     super(
//       builder: (BuildContext context, NoteModel note, Widget child) =>
//         note.notes.isEmpty ?
//         Center(
//           child: Text("List is empty")
//         ) :
//         ListView.builder(
//           itemCount: note.notesLength,
//           itemBuilder: (BuildContext ctxt, int index) {
//             var notes = note.notesList;
//
//             return new Slidable(
//               actionPane: SlidableDrawerActionPane(),
//               actionExtentRatio: 0.25,
//               secondaryActions: [
//                 IconSlideAction(
//                   caption: 'Edit',
//                   color: Colors.grey[300],
//                   icon: Icons.edit,
//                   onTap: () async {
//                     await note.setActiveNote(notes[index].id);
//                     Navigator.pushNamed(context, EDIT_NOTE);
//                   }
//                 ),
//                 IconSlideAction(
//                   caption: 'Delete',
//                   color: Colors.red,
//                   icon: Icons.delete,
//                   onTap: () async {
//                     await note.deleteNote(notes[index].id);
//                   }
//                 )
//               ],
//
//               child: InkWell(
//                 onTap: () async {
//                   // print("note id" + notes[index].id.toString());
//                   await note.setActiveNote(notes[index].id);
//                   Navigator.pushNamed(context, VIEW_NOTE);
//                 },
//                 child: Container(
//                   padding: EdgeInsets.all(15),
//                   decoration: BoxDecoration(
//                     border: Border(
//                       bottom: BorderSide(
//                         color: Colors.grey
//                         )
//                       )
//                   ),
//                   constraints: const BoxConstraints(maxHeight:100),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         notes[index].title,
//                         style: Theme.of(context).textTheme.headline6,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       Opacity(
//                         opacity: 0.2,
//                         child: Divider(
//                           color: Colors.black,
//                           height: 1,
//                         )
//                       ),
//                       Flexible(
//                         child: Padding(
//                           padding: EdgeInsets.only(top: 10),
//                           child: Text(
//                             notes[index].message,
//                             maxLines: null,
//                             overflow: TextOverflow.fade,
//                           )
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             );
//           },
//         ),
//     );
// }