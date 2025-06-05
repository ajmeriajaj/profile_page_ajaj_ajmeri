import 'package:flutter/material.dart';
import 'package:flutter_task_ui/data/data.dart';
import 'package:flutter_task_ui/responsive.dart';
import 'package:flutter_task_ui/widgets/course_widget.dart';

class CourseListView extends StatefulWidget {
  const CourseListView({super.key});

  @override
  State<CourseListView> createState() => _CourseListViewState();
}

class _CourseListViewState extends State<CourseListView> {

  int getCrossAxisCount(BuildContext context) {

    if (getWidth(context) < 400) return 2;

    if (getWidth(context) < 600) return 2;

    if (getWidth(context) < 800) {
      return MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3;
    }

    return MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 4;
  }

  double getChildAspectRatio(BuildContext context) {

    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    if (getWidth(context) < 400) return isPortrait ? 0.8 : 0.7;

    if (getWidth(context) < 450) return isPortrait ? 0.83 : 0.75;

    if (getWidth(context) > 450 && getWidth(context) < 499) return isPortrait ? 0.85 : 0.72;

    if (getWidth(context) < 500) return isPortrait ? 1.0 : 0.8;

    if (getWidth(context) < 700) return isPortrait ? 0.9 : 0.75;

    return isPortrait ? 0.85 : 0.7;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: courseData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: getCrossAxisCount(context),
            childAspectRatio: getChildAspectRatio(context),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
          final course = courseData[index];
          return CourseWidget(
              image: course['image'],
              courseTitle: course['courseTitle'],
              lesson: course['lesson'],
              view: course['view'],
              coursePrice: course['coursePrice'],
              rating: course['rating']
          );
          }),
    );
  }
}
