import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

class HomeScreenText extends StatelessWidget {
  final String text;
  final Color color;
  final int top;

  const HomeScreenText({
    super.key,
    required this.text,
    this.color = AppColors.primaryText,
    this.top = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top.h),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
