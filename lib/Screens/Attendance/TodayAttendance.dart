import 'package:flutter/material.dart';
import 'package:school_management/Widgets/Attendance/AttendanceCard.dart';

class TodayAttendance extends StatefulWidget {
  @override
  _TodayAttendanceState createState() => _TodayAttendanceState();
}

class _TodayAttendanceState extends State<TodayAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         AttendanceCard(attendance: true,
         endtime: "10 AM",
         staff: "1st hour",
         starttime: "9 AM",
         subject: "English",
         ),
         AttendanceCard(attendance: false,
         endtime: "11 AM",
         staff: "2nd hour",
         starttime: "10 AM",
         subject: "Maths",
         ),
         AttendanceCard(attendance: false,
         endtime: "12 AM",
         staff: "3rd hour",
         starttime: "11 AM",
         subject: "Physics",
         ),
         AttendanceCard(attendance: false,
         endtime: "1 PM",
         staff: "4th hour",
         starttime: "12 AM",
         subject: "Chemistry",
         ),
          
        ],
      ),
    );
  }
}
