import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
import 'package:portfolio/Widgets/ProjectCardWidget.dart';
import 'package:portfolio/utils/Projects-util.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //Work Projects title
          Text("Work Projects",style: TextStyle(
              fontSize: 24,
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50,),
          //Work projects card
          ConstrainedBox(constraints:BoxConstraints(
              maxWidth: 900
          ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for(int i=0; i<workProjectUtils.length; i++)
                  Projectcardwidget(project: workProjectUtils[i]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
