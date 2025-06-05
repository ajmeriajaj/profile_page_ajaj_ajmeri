import 'package:flutter/material.dart';

class ImageIconWidget extends StatefulWidget {
  final String iconImage;
  final double height;
  final double width;
  final VoidCallback onTap;

  const ImageIconWidget({
    super.key,
    required this.iconImage,
    required this.height,
    required this.width,
    required this.onTap
  });

  @override
  State<ImageIconWidget> createState() => _ImageIconWidgetState();
}

class _ImageIconWidgetState extends State<ImageIconWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Image(
        image: AssetImage(widget.iconImage),
        height: widget.height,
        width: widget.width,
      ),
    );
  }
}
