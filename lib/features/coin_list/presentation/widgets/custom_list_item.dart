import 'package:flutter/material.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({
    required this.height,
    required this.child,
    this.shadowBorderRadius = 10.0,
    this.borderRadius = 8.0,
    required this.shadowColor,
    this.offsetX = 0.0,
    this.offsetY = 8.0,
  });

  final double height;
  final Widget child;
  final double shadowBorderRadius;
  final double borderRadius;
  final Color shadowColor; // added
  final double offsetX;
  final double offsetY;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: shadowBorderRadius,
            // has the effect of softening the shadow
            offset: Offset(
              offsetX, // horizontal, move right 10
              offsetY, // vertical, move down 10
            ),
          )
        ],
      ),
      child: Card(
        margin: EdgeInsets.all(1.5),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        color: Colors.white,
        child: child,
      ),
    );
  }
}
