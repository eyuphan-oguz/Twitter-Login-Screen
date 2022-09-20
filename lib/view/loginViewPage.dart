import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitterui/constant/colors.dart';
import 'package:twitterui/constant/svgImageItems.dart';
import 'package:twitterui/constant/text.dart';
import 'package:twitterui/widgets/customDividerWidget.dart';
import 'package:twitterui/widgets/customHaveAnAccountTextWidget.dart';
import 'package:twitterui/widgets/customLoginAppBarWidget.dart';
import 'package:twitterui/widgets/customLoginButtonWidget.dart';
import 'package:twitterui/widgets/customLoginTitleTextWidget.dart';
import '../widgets/customTermsOfUseTextWidget.dart';

class LoginViewPage extends StatefulWidget {
  const LoginViewPage({Key? key}) : super(key: key);

  @override
  State<LoginViewPage> createState() => _LoginViewPageState();
}

class _LoginViewPageState extends State<LoginViewPage> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize=MediaQuery.of(context).size;
    double deviceWidth=MediaQuery.of(context).size.width;
    double deviceHeight=MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(
      backgroundColor: ProjectColor.backgroundThemeColor,
      appBar: PreferredSize(preferredSize:  deviceSize*0.08,child: CustomLoginAppBar(size:deviceSize ,)),
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: deviceWidth*0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomLoginTitleTextWidget(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
              Column(
                children: [
                  CustomLoginButtonWidget(desc: ProjectText.loginButtonText,iconName: ProjectText.googleText,iconUrl: '${SvgImageItems.googleIcon}',size: deviceSize),
                  SizedBox(height: deviceHeight*0.02,),
                  CustomLoginButtonWidget(desc: ProjectText.loginButtonText,iconName: ProjectText.appleText,iconUrl: '${SvgImageItems.appleIcon}',size: deviceSize),
                  SizedBox(height: deviceHeight*0.02,),
                  CustomDividerWidget(deviceWidth: deviceWidth),
                  SizedBox(height: deviceHeight*0.01,),
                  Row(children: [Expanded(child: CustomLoginButtonWidget(desc: 'Create account', size: deviceSize)),],),
                ],
              ),
              SizedBox(height: deviceHeight*0.01,),
              CustomTermsOfUseTextWidget(deviceWidth: deviceWidth, deviceHeight: deviceHeight),
              CustomHaveAnAccountTextWidget(deviceWidth: deviceWidth)
            ],
          ),
      ),



    ));
  }
}








