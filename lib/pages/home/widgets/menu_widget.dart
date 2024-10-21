import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/home/widgets/menu_buttons_widget.dart';
import 'package:ulearning_app/common/widgets/reusable_text.dart';

import '../../../common/values/colors.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 325.w,
          margin: EdgeInsets.only(top: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const ReusableText(
                text: 'Choose your course',
              ),
              GestureDetector(
                child: const ReusableText(
                  text: 'See all',
                  color: AppColors.primaryThirdElementText,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: const Row(
            children: [
              MenuButtonsWidget(
                menuText: 'All',
              ),
              MenuButtonsWidget(
                menuText: 'Popular',
                textColor: AppColors.primaryThirdElementText,
                backgroundColor: Colors.white,
              ),
              MenuButtonsWidget(
                menuText: 'Newest',
                textColor: AppColors.primaryThirdElementText,
                backgroundColor: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}
