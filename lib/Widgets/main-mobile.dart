import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return  Container(
      margin: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 30
      ),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 550),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar img
          ShaderMask(
              shaderCallback:(bounds){
                return LinearGradient(colors: [
                  CustomColor.ScaffoldBg.withOpacity(0.6),
                  CustomColor.ScaffoldBg.withOpacity(0.6)]).
                createShader(bounds);},
              blendMode:BlendMode.srcATop,
              child: Image.asset('assets/img.png',width: screenWidth)),
          SizedBox(
            height: 30,
          ),
          Text('Hi,\n I am Mahnoor Bukhari \n Flutter Developer',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CustomColor.whitePrimary,
          ),),
          SizedBox(height: 15,),
          SizedBox(
              width: 160,
              child: ElevatedButton(onPressed: (){}, child: Text('Get in Touch',),))
        ],
      ) ,);
  }
}
