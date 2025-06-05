import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  final String txt;
  final TextStyle style;

  const TextWidget({super.key, required this.txt, required this.style});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.txt,
      style: widget.style,
    );
  }
}
