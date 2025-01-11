
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return  Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,),
      height: screenHeight / 1.8,
      constraints: BoxConstraints(
          minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi,\n I am Mahnoor Bukhari \n Flutter Developer',style: TextStyle(
                fontSize: 20,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),),
              SizedBox(height: 15,),
              SizedBox(
                  width: 180,
                  child: ElevatedButton(onPressed: (){}, child: Text('Get in Touch',),))
            ],
          ),
          Image.asset('assets/img.png',width: screenWidth/1.8,)
        ],),
    );
  }
}
