import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
import 'package:portfolio/Constants/screen-size.dart';
import 'package:portfolio/Widgets/textfield-widget.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
          ConstrainedBox(constraints: BoxConstraints(maxWidth: 700),
            child:LayoutBuilder(builder: (context,constraints){
              if(constraints.maxWidth >= kMinDesktopWidth){
              return buildnameEmailFieldDesktop();
              }
              else
                return buildnameEmailFieldMobile();
            },)
          ),SizedBox(height: 15,),
          //email
          ConstrainedBox(constraints: BoxConstraints(
              maxWidth: 700
          ),
            child: TextFieldForm(
              hintText: "Your Message",
              maxlines: 10,
            ),
          ),SizedBox(height: 20,
          ),
          //send Button
          ConstrainedBox(constraints: BoxConstraints(maxWidth: 700,maxHeight: 50),
            child: SizedBox(width: double.maxFinite,
                child: ElevatedButton(onPressed: (){},
                  child: Text('Get in touch'),)),
          ),SizedBox(height: 15,),
          ConstrainedBox(constraints: BoxConstraints(maxWidth: 300),
            child: Divider(),
          ),
          SizedBox(height: 15,),
          //SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(onTap: (){},
                  child: Image.asset('assets/Projects/github.png',width: 28,)),
              InkWell(onTap: (){},
                child:Image.asset('assets/Projects/linkedin.png',width: 28,),),
              InkWell(onTap: (){},
                child: Image.asset('assets/Projects/whatsapp.png',width: 28,),),
            ],)
        ],
      ),
    );
  }
  Row buildnameEmailFieldDesktop(){
    return Row(
      children: [
        Flexible(child: TextFieldForm(
          hintText: "Your Name",
        ),
        ),SizedBox(width: 15,),
        //name
        Flexible(child: TextFieldForm(
          hintText: "Your Email",
        )
        ),
      ],
    );
  }
  Column buildnameEmailFieldMobile(){
    return Column(
      children: [
        Row(
          children: [
            Flexible(child: TextFieldForm(
              hintText: "Your Name",
            ),
            ),SizedBox(width: 15,),
            //name
            Flexible(child: TextFieldForm(
              hintText: "Your Email",
            )
            ),
          ],
        ),
      ],
    );
}}
