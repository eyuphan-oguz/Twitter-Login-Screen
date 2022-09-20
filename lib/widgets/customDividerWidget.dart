import 'package:flutter/material.dart';
import 'package:twitterui/constant/colors.dart';
import 'package:twitterui/constant/text.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    Key? key,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const Expanded(
            child: Divider(thickness: 1,color: ProjectColor.dividerColor,)
        ),
        SizedBox(width: deviceWidth*0.02,),
        Text(ProjectText.loginDividerText,style: TextStyle(color: ProjectColor.dividerColor),),
        SizedBox(width: deviceWidth*0.02,),
        const Expanded(
            child: Divider(thickness: 1,color: ProjectColor.dividerColor,)
        ),

      ],
    );
  }
}