import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../values/colors.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final Color color;
  final int fontSize;
  final FontWeight fontWeight;

  const ReusableText({
    super.key,
    required this.text,
    this.color = AppColors.primaryText,
    this.fontSize = 16,
    this.fontWeight=FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight:fontWeight,
          fontSize: fontSize.sp,
        ),
      ),
    );
  }
}
