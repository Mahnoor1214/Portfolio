import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
import 'package:portfolio/Constants/Nav-Items/Nav-Items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:CustomColor.ScaffoldBg,
      child: ListView(
        children: [
          Align(alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20),
              child: IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.close)),
            ),
          ),
          for(int i=0; i<NavIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: TextStyle(color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              onTap: (){},
              leading: Icon(NavIcons[i]),
              title: Text(NavTitles[i]),
            )
        ],
      ),
    );
  }
}
