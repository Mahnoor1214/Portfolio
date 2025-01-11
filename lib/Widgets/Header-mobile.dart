import 'package:flutter/material.dart';
import 'package:portfolio/Styles/style.dart';
import 'package:portfolio/Widgets/site-logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

@override
  Widget build(BuildContext context) {
    return  Container(
      height:50 ,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          Spacer(),IconButton(onPressed: onMenuTap, icon:Icon(Icons.menu)),SizedBox(width: 15,)
        ],
      ),
    );
  }
}
