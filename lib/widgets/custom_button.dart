import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final double width;
  final Color color;
  final String buttonText;

  CustomButton({@required this.width, @required this.color, @required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
        alignment: Alignment.center,
        child: Text(buttonText, style: TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.w700 ),),
      ),
    );
  }
}
