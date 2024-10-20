import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderItem extends StatelessWidget {
  final String path;

  const SliderItem({super.key, this.path = 'assets/icons/art.png'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 160.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        image:  DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
