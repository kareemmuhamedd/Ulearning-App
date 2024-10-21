import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/home/widgets/home_reusable_text.dart';

import '../../../common/values/colors.dart';

class MenuButtonsWidget extends StatelessWidget {
  final String menuText;
  final Color backgroundColor;
  final Color textColor;

  const MenuButtonsWidget({
    super.key,
    required this.menuText,
    this.textColor = AppColors.primaryElementText,
    this.backgroundColor = AppColors.primaryElement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.w),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(7.w),
        border: Border.all(
          color: backgroundColor,
        ),
      ),
      padding: EdgeInsets.only(
        left: 15.w,
        right: 15.w,
        top: 5.h,
        bottom: 5.h,
      ),
      child: HomeReusableText(
        text: menuText,
        color: textColor,
        fontSize: 11,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
