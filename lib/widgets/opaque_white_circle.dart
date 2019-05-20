import 'package:flutter/material.dart';

class OpaqueCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Positioned(
      bottom: 0,
      right: 5,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.02)
        ),
      ),
    );
  }
}
