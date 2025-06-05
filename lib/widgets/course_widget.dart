import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_ui/responsive1.dart';

class CourseWidget extends StatelessWidget {
  final String image;
  final String courseTitle;
  final String lesson;
  final String view;
  final String coursePrice;
  final String rating;

  const CourseWidget({
    super.key,
    required this.image,
    required this.courseTitle,
    required this.lesson,
    required this.view,
    required this.coursePrice,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive1.isTablet(context);
    final textScale = isTablet ? 1.2 : 1.0;

    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(isTablet ? 12 : 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseTitle,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 16 * textScale,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildInfoItem(
                      context,
                      icon: Icons.play_lesson,
                      text: lesson,
                      isTablet: isTablet,
                    ),
                    _buildInfoItem(
                      context,
                      icon: CupertinoIcons.person,
                      text: view,
                      isTablet: isTablet,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      coursePrice,
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 14 * textScale,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.star_fill,
                          size: 16 * textScale,
                          color: Colors.amber,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating,
                          style: TextStyle(
                            fontSize: 12 * textScale,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
      BuildContext context, {
        required IconData icon,
        required String text,
        required bool isTablet,
      }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: isTablet ? 18 : 16, color: Colors.grey),
        const SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            fontSize: isTablet ? 12 : 11,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}