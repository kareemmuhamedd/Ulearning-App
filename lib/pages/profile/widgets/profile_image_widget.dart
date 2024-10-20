import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.only(right: 6.w),
      width: 80.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        image: const DecorationImage(
          image: AssetImage('assets/icons/headpic.png'),
        ),
      ),
      child:  Image(
        width: 25.w,
        height: 25.h,
        image: const AssetImage('assets/icons/edit_3.png'),
      ),
    );
  }
}
