import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitterui/constant/svgImageItems.dart';

class CustomLoginButtonWidget extends StatefulWidget {
   String? iconUrl;
   String? iconName;
   late String desc;
   late Size size;
    CustomLoginButtonWidget(
       {Key? key,
         required this.desc,
         this.iconUrl = "",
         this.iconName,
         required this.size
       })
       : super(key: key);

  @override
  State<CustomLoginButtonWidget> createState() => _CustomLoginButtonWidgetState();
}

class _CustomLoginButtonWidgetState extends State<CustomLoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height*0.06,
      child: OutlinedButton(
        onPressed: (){},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
        ),
        child: widget.iconUrl!="" ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(width: widget.size.width*0.06,height: widget.size.height*0.035,'assets/images/svg/${widget.iconUrl}.svg'),
            SizedBox(width: widget.size.width*0.02,),
            Text(widget.desc),
            SizedBox(width: widget.size.width*0.01,),
            Text(widget.iconName.toString()),
          ],
        ) :Text(widget.desc),
      ),
    );
  }
}
