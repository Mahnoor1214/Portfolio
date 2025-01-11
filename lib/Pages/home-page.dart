import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
import 'package:portfolio/Constants/screen-size.dart';
import 'package:portfolio/Constants/skill-item/skill-item.dart';
import 'package:portfolio/Styles/style.dart';
import 'package:portfolio/Widgets/Drawer-mobile.dart';
import 'package:portfolio/Widgets/Header-mobile.dart';
import 'package:portfolio/Widgets/ProjectCardWidget.dart';
import 'package:portfolio/Widgets/Projects-Section.dart';
import 'package:portfolio/Widgets/header-desktop.dart';
import 'package:portfolio/Widgets/main-desktop.dart';
import 'package:portfolio/Widgets/main-mobile.dart';
import 'package:portfolio/Widgets/site-logo.dart';
import 'package:portfolio/Widgets/skills-desktop.dart';
import 'package:portfolio/Widgets/skills-mobile.dart';
import 'package:portfolio/Widgets/textfield-widget.dart';
import 'package:portfolio/utils/Projects-util.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context,constrainsts) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer:constrainsts.maxWidth>=kMinDesktopWidth?null: const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //Home
              if(constrainsts.maxWidth>=kMinDesktopWidth)
              const HeaderDesktop()
              else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
              if(constrainsts.maxWidth>=kMinDesktopWidth)
              const MainDesktop()
              else const MainMobile(),
              //Skills
              Container(
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                color:CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    Text("what I can Do",style: TextStyle(
                      fontSize: 24,
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(height: 40,),
                    //platforms and skills
                    if(constrainsts.maxWidth >= kMedDesktopWidth)
                    const SkillsDesktop()
                    else
                    const SkillMobile(),
                  ],
                ),
              ),SizedBox(
                height: 30,
              ),
              //Projects
               ProjectSection(),
              //Contacts
              Container(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 40),
                color: CustomColor.bgLight1,
                child: Column(
                  children: [
                    Text('Get In Touch',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: CustomColor.whitePrimary,
                    ),),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Flexible(child: TextFieldForm(
                          hintText: "Your Name",
                        ),
                        ),
                    Flexible(child: TextFieldForm(
                       hintText: "Your Name",
                    )
                    ),
                      ],
                    ),
                    Flexible(child: TextFieldForm(
                      hintText: "Your Name",
                      maxlines: 20,
                    )
                    )
                  ],
                ),
              ),
              //Footer
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blue,
              ),
            ],
          )
      );
    });
  }
}
