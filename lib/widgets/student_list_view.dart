import 'package:flutter/material.dart';
import 'package:flutter_task_ui/widgets/student_widget.dart';

import '../data/data.dart';

class StudentListView extends StatefulWidget {
  const StudentListView({super.key});

  @override
  State<StudentListView> createState() => _StudentListViewState();
}

class _StudentListViewState extends State<StudentListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: studentData.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final student = studentData[index];
            return StudentWidget(
              studentImage: student['studentImage'],
              studentName: student['studentName'],
              studentDepartment: student['studentDepartment'],
              studentSemester: student['studentSemester'],
            );
          }),
    );
  }
}
