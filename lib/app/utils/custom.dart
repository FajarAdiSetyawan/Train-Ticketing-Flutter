import 'package:flutter/material.dart';
import 'package:train_ticketing/app/constant/colors.dart';

class GradientElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const GradientElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height,
    this.gradient = const LinearGradient(
      transform: GradientRotation(90),
      colors: [
        Color.fromARGB(255, 147, 196, 240),
        bluePrimary,
      ],
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
