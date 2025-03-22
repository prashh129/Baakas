// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double height;
  final double width;
  final Widget child;
  final double radius;
  final BorderSide? side;


  
  const CustomElevatedButton ({super.key,
          this.onPressed,
          this.backgroundColor,
          this.foregroundColor,
          this.height = 48,
          this.width = double.infinity,
          required this.child,
          this.radius = 10,
          this.side, required TextStyle style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: side,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),

        ),
      ),
      child: child,
    );
  }
}