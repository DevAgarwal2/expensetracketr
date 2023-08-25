import "package:flutter/material.dart";
class TextFieldComp extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final Icon icon;
  const TextFieldComp({super.key,required this.text,required this.controller,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: 15,right: 15,top: 6,bottom: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(18)
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: icon,
          border: InputBorder.none

        ),
      ),

    );
  }
}