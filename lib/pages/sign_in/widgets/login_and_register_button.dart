import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';

class LoginAndRegisterButton extends StatelessWidget {
  final String buttonName;
  final String buttonType;

  const LoginAndRegisterButton({
    super.key,
    required this.buttonName,
    required this.buttonType,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 325.w,
        height: 50.h,
        margin: EdgeInsets.only(
          left: 25.w,
          right: 25.w,
          top: buttonType == 'login' ? 40.h : 20.h,
        ),
        decoration: BoxDecoration(
          color: buttonType == 'login'
              ? AppColors.primaryElement
              : AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(15.r),
          border: buttonType == 'login'
              ? null
              : Border.all(
                  color: AppColors.primaryFourthElementText,
                ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.normal,
              color: buttonType == 'login'
                  ? AppColors.primaryBackground
                  : AppColors.primaryText,
            ),
          ),
        ),
      ),
    );
  }
}
