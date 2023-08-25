import 'package:flutter/material.dart';

class ButtonComp extends StatelessWidget {
  final String text;
  Function()? onPressed;

   ButtonComp({super.key, required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
        
      ),
      
      color: Colors.blue
    );
  }
}
