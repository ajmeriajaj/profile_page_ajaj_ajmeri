import 'package:flutter/material.dart';
import 'package:flutter_task_ui/data/data.dart';
import 'package:flutter_task_ui/widgets/student_list_view.dart';
import 'package:flutter_task_ui/widgets/student_widget.dart';

import '../responsive.dart';

class StudentTab extends StatefulWidget {
  const StudentTab({super.key});

  @override
  State<StudentTab> createState() => _StudentTabState();
}

class _StudentTabState extends State<StudentTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(6 * getResponsive(context)),
        child: Column(
          children: [
            StudentListView()
          ],
        ),
      ),
    );
  }
}
