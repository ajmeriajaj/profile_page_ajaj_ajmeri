import 'package:flutter/material.dart';
import 'package:flutter_task_ui/responsive.dart';
import 'package:flutter_task_ui/widgets/course_list_view.dart';

class CourseTab extends StatefulWidget {
  const CourseTab({super.key});

  @override
  State<CourseTab> createState() => _CourseTabState();
}

class _CourseTabState extends State<CourseTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(6 * getResponsive(context)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CourseListView()
          ],
        ),
      ),
    );
  }
}
