import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitterui/constant/colors.dart';
import 'package:twitterui/constant/text.dart';

class CustomTermsOfUseTextWidget extends StatelessWidget {
  const CustomTermsOfUseTextWidget({
    Key? key,
    required this.deviceWidth,
    required this.deviceHeight,
  }) : super(key: key);

  final double deviceWidth;
  final double deviceHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:deviceWidth*1,
      height: deviceHeight*0.1,

      child: RichText(

        text: TextSpan(text: ProjectText.termOfUseText[0],style:Theme.of(context).textTheme.bodyLarge!.copyWith(color: ProjectColor.dividerColor,fontSize: 16),children: [
          TextSpan(text: ProjectText.termOfUseText[1],style: TextStyle(color: Colors.blue),recognizer:TapGestureRecognizer()..onTap=(){}),
          TextSpan(text: ProjectText.termOfUseText[2],style:Theme.of(context).textTheme.bodyText1!.copyWith(color: ProjectColor.dividerColor)),

          TextSpan(text: ProjectText.termOfUseText[3],style: TextStyle(color: Colors.blue),recognizer:TapGestureRecognizer()..onTap=(){}),
          TextSpan(text: ProjectText.termOfUseText[4],style:Theme.of(context).textTheme.bodyText1!.copyWith(color: ProjectColor.dividerColor)),
          TextSpan(text: ProjectText.termOfUseText[5],style: TextStyle(color: Colors.blue),recognizer:TapGestureRecognizer()..onTap=(){}),
          TextSpan(text: ProjectText.termOfUseText[6],style:Theme.of(context).textTheme.bodyText1!.copyWith(color: ProjectColor.dividerColor)),

        ]),


      ),

    );
  }
}