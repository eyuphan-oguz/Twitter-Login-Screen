import 'package:flutter/material.dart';
import 'package:twitterui/constant/text.dart';

class CustomLoginTitleTextWidget extends StatelessWidget {
  const CustomLoginTitleTextWidget({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: deviceHeight*0.15),
      child: Container(
        width: deviceWidth*1,

        child: RichText(
          text: TextSpan(text: ProjectText.loginTitleText[0],style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),children: [
            TextSpan(text: ProjectText.loginTitleText[1],style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white)),

          ]),


        ),
      ),
    );
  }
}