import 'package:flutter/material.dart';
import 'package:flutter_task_ui/responsive.dart';

class ButtonWidgets extends StatefulWidget {
  final Color color;
  final Color borderColor;
  final IconData icon;
  final String btnName;
  final VoidCallback? onPressed;
  const ButtonWidgets({super.key, required this.color, required this.borderColor, required this.icon, required this.btnName, this.onPressed});

  @override
  State<ButtonWidgets> createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.045 * getHeight(context),
      width: 0.4 * getWidth(context),
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.all(
              Radius.circular(23)
          ),
        border: Border.all(color: widget.borderColor, width: 0.004 * getWidth(context))
      ),
      child: TextButton(
          onPressed: widget.onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: Colors.white,
              ),
              SizedBox(width: 0.013 * getWidth(context),),
              Text(
                widget.btnName,
                style: TextStyle(
                    color: Colors.white
                ),
              )
            ],
          )
      ),
    );
  }
}
