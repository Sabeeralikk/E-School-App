import 'package:cloud_firestore/cloud_firestore.dart';
class UserModel {
  final String uid;

  UserModel({this.uid});

}

CollectionReference users = FirebaseFirestore.instance.collection('Students');

Future<void> addUser(name1, rollno1, class1, email1, phone1, uid1) async{
  return users.doc(uid1).set({
    'Name': name1,
    'Roll Number': rollno1,
    'Class': class1,
    'Email': email1,
    'Phone Number': phone1
  })
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}

Future<void> addExam(exam1, uid1) async{
  return users.doc(uid1).update({
    'Exams': exam1
  });
}

// DO NOT DELETE THIS!
//
// class PlacesVisited extends StatefulWidget {
//   final String documentId;
//
//   PlacesVisited(this.documentId);
//
//   @override
//   _PlacesVisitedState createState() => _PlacesVisitedState();
// }
//
// class _PlacesVisitedState extends State<PlacesVisited> {
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<DocumentSnapshot>(
//       future: users.doc(widget.documentId).get(),
//       builder: (BuildContext context,
//           AsyncSnapshot<DocumentSnapshot> snapshot) {
//         if (snapshot.hasError) {
//           return Text("Something went wrong");
//         }
//
//         if (snapshot.hasData && !snapshot.data.exists) {
//           return Text("Document does not exist");
//         }
//
//         if (snapshot.connectionState == ConnectionState.done) {
//           Map<String, dynamic> data = snapshot.data.data();
//           return
//         }
//
//         return Scaffold(body: Center(child: CircularProgressIndicator(),));
//       },
//     );
//   }
// }
