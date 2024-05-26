import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText,  this.maxLines=1, });
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines:maxLines ,
      cursorColor: const Color(0xff62FCD7),
      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: const TextStyle(color:Color(0xff62FCD7)),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder( const Color(0xff62FCD7)),
      ),

    );
  }
}

OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(color:color ?? Colors.white)
  );
}