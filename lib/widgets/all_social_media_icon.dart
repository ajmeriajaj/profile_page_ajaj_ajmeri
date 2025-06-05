import 'package:flutter/material.dart';
import 'package:flutter_task_ui/responsive.dart';
import 'package:flutter_task_ui/widgets/image_icon_widget.dart';

class AllSocialMediaIcon extends StatefulWidget {
  const AllSocialMediaIcon({super.key});

  @override
  State<AllSocialMediaIcon> createState() => _AllSocialMediaIconState();
}

class _AllSocialMediaIconState extends State<AllSocialMediaIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIconWidget(
          iconImage: "assets/images/facebook.png",
          height: 0.05 * getHeight(context),
          width: 0.11 * getWidth(context),
          onTap: () {},
        ),
        SizedBox(width: 4,),
        ImageIconWidget(
          iconImage: "assets/images/1.png",
          height: 0.03 * getHeight(context),
          width: 0.05 * getHeight(context),
          onTap: () {},
        ),
        SizedBox(width: 4,),
        ImageIconWidget(
          iconImage: "assets/images/linkedinpng.png",
          height: 0.05 * getHeight(context),
          width: 0.11 * getWidth(context),
          onTap: () {},
        ),
        SizedBox(width: 4,),
        ImageIconWidget(
          iconImage: "assets/images/insta.png",
          height: 0.05 * getHeight(context),
          width: 0.11 * getWidth(context),
          onTap: () {},
        ),
        SizedBox(width: 4,),
      ],
    );
  }
}
