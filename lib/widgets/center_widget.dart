import 'package:flutter/material.dart';
import 'package:flutter_task_ui/responsive.dart';
import 'package:flutter_task_ui/widgets/all_social_media_icon.dart';
import 'package:flutter_task_ui/widgets/raw_button_widget.dart';
import 'package:flutter_task_ui/widgets/image_icon_widget.dart';
import 'package:flutter_task_ui/widgets/text_widget.dart';

class CenterWidget extends StatefulWidget {
  const CenterWidget({super.key});

  @override
  State<CenterWidget> createState() => _CenterWidgetState();
}

class _CenterWidgetState extends State<CenterWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(23.0 * getResponsive(context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageIconWidget(
              iconImage: 'assets/images/image.png',
              height: 0.10 * getHeight(context),
              width: 0.10 * getHeight(context),
              onTap: () {},
            ),
            SizedBox(height: 0.01 * getHeight(context)),
            TextWidget(
                txt: "Elon Musk",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30  * getResponsiveText(context),
                    fontFamily: 'Poppins'
                )
            ),
            SizedBox(height: 4),
            TextWidget(
                txt: "IT Technician and Expert",
                style: TextStyle(
                    fontSize: 21 * getResponsiveText(context),
                    fontFamily: 'Poppins',
                    color:  Color.fromARGB(255, 43, 57, 255)
                )
            ),
            SizedBox(height: 0.006 * getHeight(context)),
            TextWidget(
                txt: 'B-TEch in IT/CS From IIT',
                style: TextStyle(
                    fontSize: 17 * getResponsiveText(context),
                    fontFamily: 'Poppins',
                    color:  Colors.grey.shade600
                )
            ),
            TextWidget(
              txt: "Bangalore",
              style: TextStyle(
                  fontSize: 17 * getResponsiveText(context),
                  fontFamily: 'Poppins',
                  color:  Colors.grey.shade600
              ),
            ),
            SizedBox(height: 0.006 * getHeight(context),),
            AllSocialMediaIcon(),
            SizedBox(height: 0.006 * getHeight(context),),
            RawButtonWidget()
          ],
        ),
      ),
    );
  }
}
