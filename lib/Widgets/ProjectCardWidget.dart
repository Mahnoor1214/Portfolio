import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
import 'package:portfolio/utils/Projects-util.dart';
class Projectcardwidget extends StatelessWidget {
  const Projectcardwidget({super.key,required this.project});
final ProjectsUtils project;
  @override
  Widget build(BuildContext context) {
    return  Container(
        clipBehavior: Clip.antiAlias,
        height: 280,
        width:260,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
         color: CustomColor.bgLight2,),
             child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                 //image
                Image.asset(project.image,
                  height: 140,
                  width: 250,
                 fit: BoxFit.cover,),
                   //title
                         Padding(
                    padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                     child: Text(project.title,
                  style: TextStyle(
                   fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: CustomColor.whitePrimary,
                        ),),
                    ),
                     //subtitle
                       Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                  child: Text(project.subtitle,
                     style: TextStyle(
                         fontSize: 12,
                        color: CustomColor.whiteSecondary,
                       ),),
                       ),
                        Spacer(),
                           //footer
                Container(
                  color:CustomColor.bgLight1,
                  padding:EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10
                  ),
                  child: Row(
                    children: [
                      Text('Click the Link:',
                        style: TextStyle(
                          color: CustomColor.yellowSecondary,
                          fontSize: 10,
                        ),),
                      Spacer(),
                      InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Image.asset('assets/img_4.png',width: 17,),
                        ),
                      )
                    ],
                  ),
                )
              ]
             )
    );
  }
}
