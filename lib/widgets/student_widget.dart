import 'package:flutter/material.dart';
import 'package:flutter_task_ui/responsive.dart';

class StudentWidget extends StatefulWidget {
  final String studentImage;
  final String studentName;
  final String studentDepartment;
  final String studentSemester;

  const StudentWidget({
    super.key,
    required this.studentImage,
    required this.studentName,
    required this.studentDepartment,
    required this.studentSemester
  });

  @override
  State<StudentWidget> createState() => _StudentWidgetState();
}

class _StudentWidgetState extends State<StudentWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(widget.studentImage),
          radius: 18,
        ),
        title: Text(
          widget.studentName,
          style: TextStyle(
            color: Color.fromARGB(255, 43, 57, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.studentDepartment,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey
          ),
        ),
        trailing: Text(
          widget.studentSemester,
          style: TextStyle(
              color: Color.fromARGB(255, 43, 57, 255),
              fontWeight: FontWeight.bold,
              fontSize: 19 * getResponsiveText(context)
          ),
        ),
      ),
    );
  }
}
