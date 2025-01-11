import 'package:flutter/material.dart';
import 'package:portfolio/Constants/Colors/Colors.dart';
class TextFieldForm extends StatelessWidget {
   TextFieldForm({super.key, this.controller, this.maxlines=1,  this.hintText});
   final TextEditingController? controller;
   final int maxlines;
   final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller,
      maxLines: maxlines,
      style: TextStyle(
        color: CustomColor.ScaffoldBg),
        decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.textfieldbg,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(
            color: CustomColor.hintDark
        )
    ),
    );
  }
  OutlineInputBorder get getInputBorder{
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,);
  }
}