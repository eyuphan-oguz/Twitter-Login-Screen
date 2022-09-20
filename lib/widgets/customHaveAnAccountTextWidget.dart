import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitterui/constant/colors.dart';
import 'package:twitterui/constant/text.dart';

class CustomHaveAnAccountTextWidget extends StatelessWidget {
  const CustomHaveAnAccountTextWidget({
    Key? key,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceWidth*1,
      child: RichText(
        text: TextSpan(text: ProjectText.haveAnAccountText[0],style:Theme.of(context).textTheme.bodyText2!.copyWith(color: ProjectColor.dividerColor,fontSize: 16),children: [
          TextSpan(text: ProjectText.haveAnAccountText[1],style: TextStyle(color: Colors.blue),recognizer:TapGestureRecognizer()..onTap=(){}),

        ]),


      ),
    );
  }
}