import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/values/colors.dart';

class ThirdPartyLoginWidget extends StatelessWidget {
  const ThirdPartyLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.only(
            top: 40.h,
            bottom: 20.h,
          ),
          padding: EdgeInsets.only(left: 25.w, right: 25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _reusableIcons('google'),
              _reusableIcons('apple'),
              _reusableIcons('facebook'),
            ],
          )),
    );
  }

  GestureDetector _reusableIcons(String iconName) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: 40.w,
        height: 40.h,
        child: Image.asset('assets/icons/$iconName.png'),
      ),
    );
  }
}

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.6),
        fontWeight: FontWeight.normal,
        fontSize: 14.sp,
      ),
    ),
  );
}

Widget forgotPassword(){
  return Container(
    margin: EdgeInsets.only(left: 25.w),
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: () {},
      child: Text('Forgot password?',
        style: TextStyle(
          color: AppColors.primaryText,
          fontWeight: FontWeight.normal,
          fontSize: 12.sp,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primaryText,
        ),

      ),
    ),
  );
}
