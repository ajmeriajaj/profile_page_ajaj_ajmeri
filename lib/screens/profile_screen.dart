import 'package:flutter/material.dart';
import 'package:flutter_task_ui/responsive.dart';
import 'package:flutter_task_ui/tab_bar/course_tab.dart';
import 'package:flutter_task_ui/tab_bar/student_tab.dart';
import 'package:flutter_task_ui/widgets/center_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 0.023 * getHeight(context)),
            CenterWidget(),
            const TabBar(
                labelColor: Color.fromARGB(255, 43, 57, 255),
                unselectedLabelColor: Colors.black,
                indicatorColor: Color.fromARGB(255, 43, 57, 255),
                tabs: [
                  Tab(text: "Course",),
                  Tab(text: "Student",)
                ]
            ),
            Expanded(
                child: TabBarView(
                    children: [
                      CourseTab(),
                      StudentTab()
                    ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
