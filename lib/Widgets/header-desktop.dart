import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
import 'package:portfolio/Constants/Nav-Items/Nav-Items.dart';
import 'package:portfolio/Styles/style.dart';
import 'package:portfolio/Widgets/site-logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:60,
      width: double.maxFinite,
      margin:EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0,),
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: (){},),
          Spacer(),
          Padding(padding: EdgeInsets.only(right: 20)),
          for(int i=0;i<NavTitles.length;i++)
            TextButton(onPressed: (){}, child:
            Text(NavTitles[i],style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w500,color: CustomColor.whitePrimary),),
            )],
      ),
    );
  }
}
