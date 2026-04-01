import 'package:flutter/material.dart';
import 'package:furniture_store_app/common/resources/app_color.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({
    super.key,
    this.height = 30,
    this.width = 30,
    this.strokeWidth = 4,
    this.color,
  });

  final double height;
  final double width;
  final double strokeWidth;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
        color: color ?? AppColor.onPrimary,
      ),
    );
  }
}
