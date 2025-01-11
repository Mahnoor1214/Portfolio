import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
import 'package:portfolio/Constants/screen-size.dart';
import 'package:portfolio/Constants/skill-item/skill-item.dart';
import 'package:portfolio/Styles/style.dart';
import 'package:portfolio/Widgets/Drawer-mobile.dart';
import 'package:portfolio/Widgets/Header-mobile.dart';
import 'package:portfolio/Widgets/ProjectCardWidget.dart';
import 'package:portfolio/Widgets/Projects-Section.dart';
import 'package:portfolio/Widgets/contact-section.dart';
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
  final scrollController = ScrollController();
  final List<GlobalKey> navbarkeys = List.generate(4, (index) =>GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context,constrainsts) {
      return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer:constrainsts.maxWidth>=kMinDesktopWidth?null: DrawerMobile(onNavItemTap: (int navIndex) {
            //call function
            scaffoldKey.currentState?.closeEndDrawer();
            scrollTosection(navIndex);
          },),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarkeys.first,),
                //Home
                if(constrainsts.maxWidth>=kMinDesktopWidth)
                  HeaderDesktop(onNavMenuTap: (int navIndex) { //call
                    scrollTosection(navIndex);
                     },)
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
                Container(key: navbarkeys[1],
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
                 ProjectSection(key: navbarkeys[2]),
                //Contacts
                ContactWidget(key: navbarkeys[3]),
                //Footer
                // Container(
                //   height: 500,
                //   width: double.maxFinite,
                //   color: Colors.blue,
                // ),
              ],
            ),
          )
      );
    });
  }
  void scrollTosection(int navIndex){
    if(navIndex==4){
     return;
    }
  final key = navbarkeys[navIndex];
  Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
  curve: Curves.easeInOut);
}
}
