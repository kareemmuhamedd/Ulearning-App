import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/routes/names.dart';
import 'package:ulearning_app/common/values/colors.dart';

var imagesInfo = <String, String>{
  'Settings': 'settings.png',
  'Payment details': 'credit-card.png',
  'Achievement': 'award.png',
  'Love': 'heart(1).png',
  'Learning Reminders': 'cube.png',
};

class SettingsListView extends StatelessWidget {
  const SettingsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          imagesInfo.length,
          (index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.SETTINGS_SCREEN);
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 15.h),
              child: Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.w),
                        color: AppColors.primaryElement),
                    child: Image.asset(
                        'assets/icons/${imagesInfo.values.elementAt(index)}'),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    imagesInfo.keys.elementAt(index),
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
