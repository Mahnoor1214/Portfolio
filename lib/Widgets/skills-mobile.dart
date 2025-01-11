import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
import 'package:portfolio/Constants/skill-item/skill-item.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints:BoxConstraints(
          maxWidth: 450
        ),
        child: Column(
          children: [
            for(int i=0; i<platformItems.length; i++)
            //platforms
              Container(
                margin: EdgeInsets.only(bottom: 5.0),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: CustomColor.bgLight2,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  leading: Image.asset(platformItems[i]["img"],width: 26,),
                  title: Text(platformItems[i]["title"]),
                ),
              ),
            SizedBox(
              height: 50,
            ),
            //skills
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                for(int i=0; i<skillItems.length; i++)
                  Chip(
                    padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16),
                    backgroundColor: CustomColor.bgLight2,
                    label: Text(skillItems[i]["title"]),
                    avatar: Image.asset(skillItems[i]["img"]),)
              ],
            )
          ],
        ),
      );
  }
}
