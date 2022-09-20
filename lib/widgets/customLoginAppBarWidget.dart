import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitterui/constant/colors.dart';
import 'package:twitterui/constant/svgImageItems.dart';

class CustomLoginAppBar extends StatelessWidget {
  late Size size;
  CustomLoginAppBar({required Size size}){
    this.size=size;
  }
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(width: size.width*0.04,height: size.height*0.04,'assets/images/svg/${SvgImageItems.twitterIcon}.svg',color: ProjectColor.twitterIconColor),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }
}
